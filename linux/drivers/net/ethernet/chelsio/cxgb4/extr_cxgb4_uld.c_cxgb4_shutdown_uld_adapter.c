
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {int flags; TYPE_1__* uld; } ;
typedef enum cxgb4_uld { ____Placeholder_cxgb4_uld } cxgb4_uld ;
struct TYPE_2__ {int * add; int * handle; } ;


 int CXGB4_FULL_INIT_DONE ;
 int CXGB4_USING_MSIX ;
 int free_msix_queue_irqs_uld (struct adapter*,int) ;
 int free_queues_uld (struct adapter*,int) ;
 int free_sge_queues_uld (struct adapter*,int) ;
 int quiesce_rx_uld (struct adapter*,int) ;
 int release_sge_txq_uld (struct adapter*,int) ;

__attribute__((used)) static void cxgb4_shutdown_uld_adapter(struct adapter *adap, enum cxgb4_uld type)
{
 if (adap->uld[type].handle) {
  adap->uld[type].handle = ((void*)0);
  adap->uld[type].add = ((void*)0);
  release_sge_txq_uld(adap, type);

  if (adap->flags & CXGB4_FULL_INIT_DONE)
   quiesce_rx_uld(adap, type);

  if (adap->flags & CXGB4_USING_MSIX)
   free_msix_queue_irqs_uld(adap, type);

  free_sge_queues_uld(adap, type);
  free_queues_uld(adap, type);
 }
}
