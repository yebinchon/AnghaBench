
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iavf_adapter {int num_active_queues; TYPE_1__* pdev; TYPE_2__* rx_rings; int rx_desc_count; } ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int iavf_setup_rx_descriptors (TYPE_2__*) ;

__attribute__((used)) static int iavf_setup_all_rx_resources(struct iavf_adapter *adapter)
{
 int i, err = 0;

 for (i = 0; i < adapter->num_active_queues; i++) {
  adapter->rx_rings[i].count = adapter->rx_desc_count;
  err = iavf_setup_rx_descriptors(&adapter->rx_rings[i]);
  if (!err)
   continue;
  dev_err(&adapter->pdev->dev,
   "Allocation for Rx Queue %u failed\n", i);
  break;
 }
 return err;
}
