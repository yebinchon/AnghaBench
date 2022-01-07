
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msdc_host {int dummy; } ;
struct mmc_request {TYPE_2__* stop; int sbc; TYPE_1__* cmd; } ;
struct mmc_data {int dummy; } ;
struct TYPE_4__ {int error; } ;
struct TYPE_3__ {int opcode; } ;


 scalar_t__ mmc_op_multi (int ) ;
 int msdc_request_done (struct msdc_host*,struct mmc_request*) ;
 int msdc_start_command (struct msdc_host*,struct mmc_request*,TYPE_2__*) ;

__attribute__((used)) static void msdc_data_xfer_next(struct msdc_host *host,
    struct mmc_request *mrq, struct mmc_data *data)
{
 if (mmc_op_multi(mrq->cmd->opcode) && mrq->stop && !mrq->stop->error &&
     !mrq->sbc)
  msdc_start_command(host, mrq, mrq->stop);
 else
  msdc_request_done(host, mrq);
}
