
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_mci {int pending_events; TYPE_1__* dma_ops; scalar_t__ using_dma; } ;
struct TYPE_2__ {int (* cleanup ) (struct dw_mci*) ;int (* stop ) (struct dw_mci*) ;} ;


 int EVENT_XFER_COMPLETE ;
 int set_bit (int ,int *) ;
 int stub1 (struct dw_mci*) ;
 int stub2 (struct dw_mci*) ;

__attribute__((used)) static void dw_mci_stop_dma(struct dw_mci *host)
{
 if (host->using_dma) {
  host->dma_ops->stop(host);
  host->dma_ops->cleanup(host);
 }


 set_bit(EVENT_XFER_COMPLETE, &host->pending_events);
}
