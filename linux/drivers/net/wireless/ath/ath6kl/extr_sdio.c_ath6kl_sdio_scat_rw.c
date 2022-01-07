
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct mmc_request {int flags; int error; struct mmc_request* data; struct mmc_request* cmd; int opcode; int blocks; int arg; } ;
struct mmc_data {int flags; int error; struct mmc_data* data; struct mmc_data* cmd; int opcode; int blocks; int arg; } ;
struct mmc_command {int flags; int error; struct mmc_command* data; struct mmc_command* cmd; int opcode; int blocks; int arg; } ;
struct hif_scatter_req {int len; int req; scalar_t__ addr; int status; int (* complete ) (int ,struct hif_scatter_req*) ;int scat_list; int scat_entries; int virt_dma_buf; scalar_t__ virt_scat; } ;
struct bus_request {struct hif_scatter_req* scat_req; } ;
struct ath6kl_sdio {TYPE_1__* ar; TYPE_2__* func; } ;
struct TYPE_8__ {int host; } ;
struct TYPE_7__ {TYPE_4__* card; int num; } ;
struct TYPE_6__ {int htc_target; } ;


 int CMD53_ARG_BLOCK_BASIS ;
 int CMD53_ARG_FIXED_ADDRESS ;
 int CMD53_ARG_INCR_ADDRESS ;
 int CMD53_ARG_READ ;
 int CMD53_ARG_WRITE ;
 int HIF_ASYNCHRONOUS ;
 int HIF_BLOCK_BASIS ;
 int HIF_FIXED_ADDRESS ;
 scalar_t__ HIF_MBOX0_EXT_WIDTH ;
 scalar_t__ HIF_MBOX_BASE_ADDR ;
 int HIF_MBOX_BLOCK_SIZE ;
 scalar_t__ HIF_MBOX_WIDTH ;
 int HIF_WRITE ;
 int MMC_CMD_ADTC ;
 int MMC_RSP_R5 ;
 int MMC_RSP_SPI_R5 ;
 int SD_IO_RW_EXTENDED ;
 int ath6kl_err (char*,int) ;
 int ath6kl_sdio_io (TYPE_2__*,int,scalar_t__,int ,int) ;
 int ath6kl_sdio_set_cmd53_arg (int *,int ,int ,int ,int ,scalar_t__,int ) ;
 int ath6kl_sdio_setup_scat_data (struct hif_scatter_req*,struct mmc_request*) ;
 int memset (struct mmc_request*,int ,int) ;
 int mmc_set_data_timeout (struct mmc_request*,TYPE_4__*) ;
 int mmc_wait_for_req (int ,struct mmc_request*) ;
 int round_down (int,int ) ;
 int sdio_claim_host (TYPE_2__*) ;
 int sdio_release_host (TYPE_2__*) ;
 int stub1 (int ,struct hif_scatter_req*) ;
 int trace_ath6kl_sdio_scat (scalar_t__,int,scalar_t__,int ,int ) ;

__attribute__((used)) static int ath6kl_sdio_scat_rw(struct ath6kl_sdio *ar_sdio,
          struct bus_request *req)
{
 struct mmc_request mmc_req;
 struct mmc_command cmd;
 struct mmc_data data;
 struct hif_scatter_req *scat_req;
 u8 opcode, rw;
 int status, len;

 scat_req = req->scat_req;

 if (scat_req->virt_scat) {
  len = scat_req->len;
  if (scat_req->req & HIF_BLOCK_BASIS)
   len = round_down(len, HIF_MBOX_BLOCK_SIZE);

  status = ath6kl_sdio_io(ar_sdio->func, scat_req->req,
     scat_req->addr, scat_req->virt_dma_buf,
     len);
  goto scat_complete;
 }

 memset(&mmc_req, 0, sizeof(struct mmc_request));
 memset(&cmd, 0, sizeof(struct mmc_command));
 memset(&data, 0, sizeof(struct mmc_data));

 ath6kl_sdio_setup_scat_data(scat_req, &data);

 opcode = (scat_req->req & HIF_FIXED_ADDRESS) ?
    CMD53_ARG_FIXED_ADDRESS : CMD53_ARG_INCR_ADDRESS;

 rw = (scat_req->req & HIF_WRITE) ? CMD53_ARG_WRITE : CMD53_ARG_READ;


 if (scat_req->req & HIF_WRITE) {
  if (scat_req->addr == HIF_MBOX_BASE_ADDR)
   scat_req->addr += HIF_MBOX_WIDTH - scat_req->len;
  else

   scat_req->addr += HIF_MBOX0_EXT_WIDTH - scat_req->len;
 }


 ath6kl_sdio_set_cmd53_arg(&cmd.arg, rw, ar_sdio->func->num,
      CMD53_ARG_BLOCK_BASIS, opcode, scat_req->addr,
      data.blocks);

 cmd.opcode = SD_IO_RW_EXTENDED;
 cmd.flags = MMC_RSP_SPI_R5 | MMC_RSP_R5 | MMC_CMD_ADTC;

 mmc_req.cmd = &cmd;
 mmc_req.data = &data;

 sdio_claim_host(ar_sdio->func);

 mmc_set_data_timeout(&data, ar_sdio->func->card);

 trace_ath6kl_sdio_scat(scat_req->addr,
          scat_req->req,
          scat_req->len,
          scat_req->scat_entries,
          scat_req->scat_list);


 mmc_wait_for_req(ar_sdio->func->card->host, &mmc_req);

 sdio_release_host(ar_sdio->func);

 status = cmd.error ? cmd.error : data.error;

scat_complete:
 scat_req->status = status;

 if (scat_req->status)
  ath6kl_err("Scatter write request failed:%d\n",
      scat_req->status);

 if (scat_req->req & HIF_ASYNCHRONOUS)
  scat_req->complete(ar_sdio->ar->htc_target, scat_req);

 return status;
}
