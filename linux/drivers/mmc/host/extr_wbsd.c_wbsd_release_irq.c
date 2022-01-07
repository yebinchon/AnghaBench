
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int finish_tasklet; int timeout_tasklet; int crc_tasklet; int fifo_tasklet; int card_tasklet; scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct wbsd_host*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void wbsd_release_irq(struct wbsd_host *host)
{
 if (!host->irq)
  return;

 free_irq(host->irq, host);

 host->irq = 0;

 tasklet_kill(&host->card_tasklet);
 tasklet_kill(&host->fifo_tasklet);
 tasklet_kill(&host->crc_tasklet);
 tasklet_kill(&host->timeout_tasklet);
 tasklet_kill(&host->finish_tasklet);
}
