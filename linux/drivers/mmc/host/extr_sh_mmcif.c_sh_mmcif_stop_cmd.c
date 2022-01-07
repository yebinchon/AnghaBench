
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mmcif_host {int wait_for; } ;
struct mmc_request {TYPE_2__* stop; TYPE_1__* cmd; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int error; } ;
struct TYPE_3__ {int opcode; } ;


 int MASK_MCMD12DRE ;
 int MASK_MCMD12RBE ;
 int MMCIF_CE_INT_MASK ;
 int MMCIF_WAIT_FOR_STOP ;


 int dev_err (struct device*,char*) ;
 int sh_mmcif_bitset (struct sh_mmcif_host*,int ,int ) ;
 int sh_mmcif_error_manage (struct sh_mmcif_host*) ;
 struct device* sh_mmcif_host_to_dev (struct sh_mmcif_host*) ;

__attribute__((used)) static void sh_mmcif_stop_cmd(struct sh_mmcif_host *host,
         struct mmc_request *mrq)
{
 struct device *dev = sh_mmcif_host_to_dev(host);

 switch (mrq->cmd->opcode) {
 case 129:
  sh_mmcif_bitset(host, MMCIF_CE_INT_MASK, MASK_MCMD12DRE);
  break;
 case 128:
  sh_mmcif_bitset(host, MMCIF_CE_INT_MASK, MASK_MCMD12RBE);
  break;
 default:
  dev_err(dev, "unsupported stop cmd\n");
  mrq->stop->error = sh_mmcif_error_manage(host);
  return;
 }

 host->wait_for = MMCIF_WAIT_FOR_STOP;
}
