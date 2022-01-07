
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_sdio {struct brcmf_sdio* hdrbuf; struct brcmf_sdio* rxbuf; TYPE_1__* sdiodev; scalar_t__ ci; scalar_t__ brcmf_wq; int datawork; int * watchdog_tsk; } ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ settings; int func1; int dev; } ;


 scalar_t__ BRCMF_SDIOD_NOMEDIUM ;
 int CLK_AVAIL ;
 int CLK_NONE ;
 int SIGTERM ;
 int TRACE ;
 int brcmf_chip_detach (scalar_t__) ;
 int brcmf_chip_set_passive (scalar_t__) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_detach (int ) ;
 int brcmf_release_module_param (scalar_t__) ;
 int brcmf_sdio_clkctl (struct brcmf_sdio*,int ,int) ;
 int brcmf_sdio_wd_timer (struct brcmf_sdio*,int) ;
 int brcmf_sdiod_intr_unregister (TYPE_1__*) ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (scalar_t__) ;
 int kfree (struct brcmf_sdio*) ;
 int kthread_stop (int *) ;
 int msleep (int) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int send_sig (int ,int *,int) ;

void brcmf_sdio_remove(struct brcmf_sdio *bus)
{
 brcmf_dbg(TRACE, "Enter\n");

 if (bus) {

  if (bus->watchdog_tsk) {
   send_sig(SIGTERM, bus->watchdog_tsk, 1);
   kthread_stop(bus->watchdog_tsk);
   bus->watchdog_tsk = ((void*)0);
  }


  brcmf_sdiod_intr_unregister(bus->sdiodev);

  brcmf_detach(bus->sdiodev->dev);

  cancel_work_sync(&bus->datawork);
  if (bus->brcmf_wq)
   destroy_workqueue(bus->brcmf_wq);

  if (bus->ci) {
   if (bus->sdiodev->state != BRCMF_SDIOD_NOMEDIUM) {
    sdio_claim_host(bus->sdiodev->func1);
    brcmf_sdio_wd_timer(bus, 0);
    brcmf_sdio_clkctl(bus, CLK_AVAIL, 0);




    msleep(20);
    brcmf_chip_set_passive(bus->ci);
    brcmf_sdio_clkctl(bus, CLK_NONE, 0);
    sdio_release_host(bus->sdiodev->func1);
   }
   brcmf_chip_detach(bus->ci);
  }
  if (bus->sdiodev->settings)
   brcmf_release_module_param(bus->sdiodev->settings);

  kfree(bus->rxbuf);
  kfree(bus->hdrbuf);
  kfree(bus);
 }

 brcmf_dbg(TRACE, "Disconnected\n");
}
