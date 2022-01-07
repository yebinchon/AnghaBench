
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_sdio {int dpc_triggered; int datawork; int brcmf_wq; } ;


 int queue_work (int ,int *) ;

void brcmf_sdio_trigger_dpc(struct brcmf_sdio *bus)
{
 if (!bus->dpc_triggered) {
  bus->dpc_triggered = 1;
  queue_work(bus->brcmf_wq, &bus->datawork);
 }
}
