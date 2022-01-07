
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {int flags; int pdev_dev; int name; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 int BUG_ON (int) ;
 int CXGB4VF_FULL_INIT_DONE ;
 int CXGB4VF_USING_MSI ;
 int CXGB4VF_USING_MSIX ;
 int dev_err (int ,char*,int) ;
 int enable_rx (struct adapter*) ;
 int name_msix_vecs (struct adapter*) ;
 int request_irq (int ,int ,int ,int ,struct adapter*) ;
 int request_msix_queue_irqs (struct adapter*) ;
 int setup_rss (struct adapter*) ;
 int setup_sge_queues (struct adapter*) ;
 int t4vf_free_sge_resources (struct adapter*) ;
 int t4vf_intr_handler (struct adapter*) ;
 int t4vf_sge_start (struct adapter*) ;

__attribute__((used)) static int adapter_up(struct adapter *adapter)
{
 int err;






 if ((adapter->flags & CXGB4VF_FULL_INIT_DONE) == 0) {
  err = setup_sge_queues(adapter);
  if (err)
   return err;
  err = setup_rss(adapter);
  if (err) {
   t4vf_free_sge_resources(adapter);
   return err;
  }

  if (adapter->flags & CXGB4VF_USING_MSIX)
   name_msix_vecs(adapter);

  adapter->flags |= CXGB4VF_FULL_INIT_DONE;
 }




 BUG_ON((adapter->flags &
        (CXGB4VF_USING_MSIX | CXGB4VF_USING_MSI)) == 0);
 if (adapter->flags & CXGB4VF_USING_MSIX)
  err = request_msix_queue_irqs(adapter);
 else
  err = request_irq(adapter->pdev->irq,
      t4vf_intr_handler(adapter), 0,
      adapter->name, adapter);
 if (err) {
  dev_err(adapter->pdev_dev, "request_irq failed, err %d\n",
   err);
  return err;
 }




 enable_rx(adapter);
 t4vf_sge_start(adapter);

 return 0;
}
