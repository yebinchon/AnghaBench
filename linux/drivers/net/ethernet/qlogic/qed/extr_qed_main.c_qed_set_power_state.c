
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int dummy; } ;
typedef int pci_power_t ;


 int DP_VERBOSE (struct qed_dev*,int ,char*) ;
 int ENODEV ;
 int NETIF_MSG_DRV ;

__attribute__((used)) static int qed_set_power_state(struct qed_dev *cdev, pci_power_t state)
{
 if (!cdev)
  return -ENODEV;

 DP_VERBOSE(cdev, NETIF_MSG_DRV, "Omitting Power state change\n");
 return 0;
}
