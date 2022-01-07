
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int dummy; } ;


 int PCI_D3hot ;
 int qed_devlink_unregister (struct qed_dev*) ;
 int qed_free_cdev (struct qed_dev*) ;
 int qed_free_pci (struct qed_dev*) ;
 int qed_hw_remove (struct qed_dev*) ;
 int qed_set_power_state (struct qed_dev*,int ) ;

__attribute__((used)) static void qed_remove(struct qed_dev *cdev)
{
 if (!cdev)
  return;

 qed_hw_remove(cdev);

 qed_free_pci(cdev);

 qed_set_power_state(cdev, PCI_D3hot);

 qed_devlink_unregister(cdev);

 qed_free_cdev(cdev);
}
