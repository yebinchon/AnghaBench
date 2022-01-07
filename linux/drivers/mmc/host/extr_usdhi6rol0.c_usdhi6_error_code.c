
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct usdhi6_host {int io_error; TYPE_2__* mrq; int wait; int mmc; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {int opcode; } ;


 int EILSEQ ;
 int EIO ;
 int ETIMEDOUT ;
 int USDHI6_SD_ERR_STS1 ;
 scalar_t__ USDHI6_SD_ERR_STS1_CRC_NO_ERROR ;
 int USDHI6_SD_ERR_STS2 ;
 int USDHI6_SD_INFO2_ILA ;
 int USDHI6_SD_INFO2_RSP_TOUT ;
 int USDHI6_SD_INFO2_TOUT ;
 int USDHI6_SD_RSP54 ;
 int USDHI6_SD_STOP ;
 int USDHI6_SD_STOP_STP ;
 int USDHI6_WAIT_FOR_CMD ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__,int ,int) ;
 int dev_warn (int ,char*,scalar_t__,scalar_t__,int,...) ;
 int mmc_dev (int ) ;
 scalar_t__ usdhi6_read (struct usdhi6_host*,int ) ;
 int usdhi6_write (struct usdhi6_host*,int ,int ) ;

__attribute__((used)) static int usdhi6_error_code(struct usdhi6_host *host)
{
 u32 err;

 usdhi6_write(host, USDHI6_SD_STOP, USDHI6_SD_STOP_STP);

 if (host->io_error &
     (USDHI6_SD_INFO2_RSP_TOUT | USDHI6_SD_INFO2_TOUT)) {
  u32 rsp54 = usdhi6_read(host, USDHI6_SD_RSP54);
  int opc = host->mrq ? host->mrq->cmd->opcode : -1;

  err = usdhi6_read(host, USDHI6_SD_ERR_STS2);

  if (host->wait == USDHI6_WAIT_FOR_CMD)
   dev_dbg(mmc_dev(host->mmc),
    "T-out sts 0x%x, resp 0x%x, state %u, CMD%d\n",
    err, rsp54, host->wait, opc);
  else
   dev_warn(mmc_dev(host->mmc),
     "T-out sts 0x%x, resp 0x%x, state %u, CMD%d\n",
     err, rsp54, host->wait, opc);
  return -ETIMEDOUT;
 }

 err = usdhi6_read(host, USDHI6_SD_ERR_STS1);
 if (err != USDHI6_SD_ERR_STS1_CRC_NO_ERROR)
  dev_warn(mmc_dev(host->mmc), "Err sts 0x%x, state %u, CMD%d\n",
    err, host->wait, host->mrq ? host->mrq->cmd->opcode : -1);
 if (host->io_error & USDHI6_SD_INFO2_ILA)
  return -EILSEQ;

 return -EIO;
}
