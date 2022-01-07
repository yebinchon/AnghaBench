
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intrcount; } ;
struct brcmf_sdio {int dpc_triggered; int datawork; int brcmf_wq; int intr; int ipend; TYPE_1__ sdcnt; } ;


 int TRACE ;
 int atomic_set (int *,int) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*) ;
 scalar_t__ brcmf_sdio_intr_rstatus (struct brcmf_sdio*) ;
 scalar_t__ in_interrupt () ;
 int queue_work (int ,int *) ;

void brcmf_sdio_isr(struct brcmf_sdio *bus)
{
 brcmf_dbg(TRACE, "Enter\n");

 if (!bus) {
  brcmf_err("bus is null pointer, exiting\n");
  return;
 }


 bus->sdcnt.intrcount++;
 if (in_interrupt())
  atomic_set(&bus->ipend, 1);
 else
  if (brcmf_sdio_intr_rstatus(bus)) {
   brcmf_err("failed backplane access\n");
  }


 if (!bus->intr)
  brcmf_err("isr w/o interrupt configured!\n");

 bus->dpc_triggered = 1;
 queue_work(bus->brcmf_wq, &bus->datawork);
}
