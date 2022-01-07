
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_mci {TYPE_1__* dms; } ;
struct TYPE_2__ {int * ch; } ;


 int dma_release_channel (int *) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void dw_mci_edmac_exit(struct dw_mci *host)
{
 if (host->dms) {
  if (host->dms->ch) {
   dma_release_channel(host->dms->ch);
   host->dms->ch = ((void*)0);
  }
  kfree(host->dms);
  host->dms = ((void*)0);
 }
}
