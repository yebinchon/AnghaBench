
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iavf_adapter {int num_active_queues; TYPE_2__* pdev; scalar_t__ num_tc; TYPE_1__* vf_res; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int vf_cap_flags; } ;


 int VIRTCHNL_VF_OFFLOAD_ADQ ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,char*,...) ;
 int iavf_alloc_q_vectors (struct iavf_adapter*) ;
 int iavf_alloc_queues (struct iavf_adapter*) ;
 int iavf_free_queues (struct iavf_adapter*) ;
 int iavf_reset_interrupt_capability (struct iavf_adapter*) ;
 int iavf_set_interrupt_capability (struct iavf_adapter*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int iavf_init_interrupt_scheme(struct iavf_adapter *adapter)
{
 int err;

 err = iavf_alloc_queues(adapter);
 if (err) {
  dev_err(&adapter->pdev->dev,
   "Unable to allocate memory for queues\n");
  goto err_alloc_queues;
 }

 rtnl_lock();
 err = iavf_set_interrupt_capability(adapter);
 rtnl_unlock();
 if (err) {
  dev_err(&adapter->pdev->dev,
   "Unable to setup interrupt capabilities\n");
  goto err_set_interrupt;
 }

 err = iavf_alloc_q_vectors(adapter);
 if (err) {
  dev_err(&adapter->pdev->dev,
   "Unable to allocate memory for queue vectors\n");
  goto err_alloc_q_vectors;
 }






 if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
     adapter->num_tc)
  dev_info(&adapter->pdev->dev, "ADq Enabled, %u TCs created",
    adapter->num_tc);

 dev_info(&adapter->pdev->dev, "Multiqueue %s: Queue pair count = %u",
   (adapter->num_active_queues > 1) ? "Enabled" : "Disabled",
   adapter->num_active_queues);

 return 0;
err_alloc_q_vectors:
 iavf_reset_interrupt_capability(adapter);
err_set_interrupt:
 iavf_free_queues(adapter);
err_alloc_queues:
 return err;
}
