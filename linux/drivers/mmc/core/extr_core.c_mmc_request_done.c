
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmc_request {int (* done ) (struct mmc_request*) ;TYPE_3__* stop; TYPE_2__* data; TYPE_1__* sbc; struct mmc_command* cmd; } ;
struct mmc_host {int led; struct mmc_request* ongoing_mrq; int card; int retune_crc_disable; } ;
struct mmc_command {int error; scalar_t__ opcode; int* resp; scalar_t__ retries; } ;
struct TYPE_6__ {int error; scalar_t__ opcode; int* resp; } ;
struct TYPE_5__ {int error; int bytes_xfered; } ;
struct TYPE_4__ {int error; scalar_t__ opcode; int* resp; } ;


 int EILSEQ ;
 int LED_OFF ;
 scalar_t__ MMC_SEND_TUNING_BLOCK ;
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ;
 int R1_SPI_ILLEGAL_COMMAND ;
 int led_trigger_event (int ,int ) ;
 scalar_t__ mmc_card_removed (int ) ;
 int mmc_complete_cmd (struct mmc_request*) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_retune_needed (struct mmc_host*) ;
 int mmc_should_fail_request (struct mmc_host*,struct mmc_request*) ;
 int pr_debug (char*,int ,scalar_t__,int,...) ;
 int stub1 (struct mmc_request*) ;
 int trace_mmc_request_done (struct mmc_host*,struct mmc_request*) ;

void mmc_request_done(struct mmc_host *host, struct mmc_request *mrq)
{
 struct mmc_command *cmd = mrq->cmd;
 int err = cmd->error;


 if (cmd->opcode != MMC_SEND_TUNING_BLOCK &&
     cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200 &&
     !host->retune_crc_disable &&
     (err == -EILSEQ || (mrq->sbc && mrq->sbc->error == -EILSEQ) ||
     (mrq->data && mrq->data->error == -EILSEQ) ||
     (mrq->stop && mrq->stop->error == -EILSEQ)))
  mmc_retune_needed(host);

 if (err && cmd->retries && mmc_host_is_spi(host)) {
  if (cmd->resp[0] & R1_SPI_ILLEGAL_COMMAND)
   cmd->retries = 0;
 }

 if (host->ongoing_mrq == mrq)
  host->ongoing_mrq = ((void*)0);

 mmc_complete_cmd(mrq);

 trace_mmc_request_done(host, mrq);
 if (!err || !cmd->retries || mmc_card_removed(host->card)) {
  mmc_should_fail_request(host, mrq);

  if (!host->ongoing_mrq)
   led_trigger_event(host->led, LED_OFF);

  if (mrq->sbc) {
   pr_debug("%s: req done <CMD%u>: %d: %08x %08x %08x %08x\n",
    mmc_hostname(host), mrq->sbc->opcode,
    mrq->sbc->error,
    mrq->sbc->resp[0], mrq->sbc->resp[1],
    mrq->sbc->resp[2], mrq->sbc->resp[3]);
  }

  pr_debug("%s: req done (CMD%u): %d: %08x %08x %08x %08x\n",
   mmc_hostname(host), cmd->opcode, err,
   cmd->resp[0], cmd->resp[1],
   cmd->resp[2], cmd->resp[3]);

  if (mrq->data) {
   pr_debug("%s:     %d bytes transferred: %d\n",
    mmc_hostname(host),
    mrq->data->bytes_xfered, mrq->data->error);
  }

  if (mrq->stop) {
   pr_debug("%s:     (CMD%u): %d: %08x %08x %08x %08x\n",
    mmc_hostname(host), mrq->stop->opcode,
    mrq->stop->error,
    mrq->stop->resp[0], mrq->stop->resp[1],
    mrq->stop->resp[2], mrq->stop->resp[3]);
  }
 }




 if (mrq->done)
  mrq->done(mrq);
}
