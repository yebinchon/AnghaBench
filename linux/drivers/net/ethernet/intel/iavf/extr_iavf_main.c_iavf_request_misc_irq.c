
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iavf_adapter {TYPE_2__* msix_entries; int misc_vector_name; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int *,char*,int ,int) ;
 char* dev_name (int *) ;
 int free_irq (int ,struct net_device*) ;
 int iavf_msix_aq ;
 int request_irq (int ,int *,int ,int ,struct net_device*) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static int iavf_request_misc_irq(struct iavf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int err;

 snprintf(adapter->misc_vector_name,
   sizeof(adapter->misc_vector_name) - 1, "iavf-%s:mbx",
   dev_name(&adapter->pdev->dev));
 err = request_irq(adapter->msix_entries[0].vector,
     &iavf_msix_aq, 0,
     adapter->misc_vector_name, netdev);
 if (err) {
  dev_err(&adapter->pdev->dev,
   "request_irq for %s failed: %d\n",
   adapter->misc_vector_name, err);
  free_irq(adapter->msix_entries[0].vector, netdev);
 }
 return err;
}
