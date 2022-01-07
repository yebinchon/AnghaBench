
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_hsmmc_host {TYPE_2__* mrq; scalar_t__ data; TYPE_1__* cmd; } ;
struct TYPE_6__ {int error; } ;
struct TYPE_5__ {TYPE_3__* cmd; } ;
struct TYPE_4__ {int error; } ;


 int SRC ;
 int SRD ;
 int omap_hsmmc_dma_cleanup (struct omap_hsmmc_host*,int) ;
 int omap_hsmmc_reset_controller_fsm (struct omap_hsmmc_host*,int ) ;

__attribute__((used)) static void hsmmc_command_incomplete(struct omap_hsmmc_host *host,
     int err, int end_cmd)
{
 if (end_cmd) {
  omap_hsmmc_reset_controller_fsm(host, SRC);
  if (host->cmd)
   host->cmd->error = err;
 }

 if (host->data) {
  omap_hsmmc_reset_controller_fsm(host, SRD);
  omap_hsmmc_dma_cleanup(host, err);
 } else if (host->mrq && host->mrq->cmd)
  host->mrq->cmd->error = err;
}
