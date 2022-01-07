
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_hwfn {int using_ll2; } ;
struct qed_dev {int num_hwfns; struct qed_hwfn* hwfns; } ;
struct TYPE_3__ {scalar_t__ personality; } ;
struct TYPE_4__ {TYPE_1__ hw_info; } ;


 int DP_INFO (struct qed_dev*,char*) ;
 TYPE_2__* QED_LEADING_HWFN (struct qed_dev*) ;
 scalar_t__ QED_PCI_ETH ;
 int qed_resc_alloc (struct qed_dev*) ;
 int qed_resc_setup (struct qed_dev*) ;

__attribute__((used)) static int qed_nic_setup(struct qed_dev *cdev)
{
 int rc, i;


 if (QED_LEADING_HWFN(cdev)->hw_info.personality != QED_PCI_ETH) {
  for (i = 0; i < cdev->num_hwfns; i++) {
   struct qed_hwfn *p_hwfn = &cdev->hwfns[i];

   p_hwfn->using_ll2 = 1;
  }
 }

 rc = qed_resc_alloc(cdev);
 if (rc)
  return rc;

 DP_INFO(cdev, "Allocated qed resources\n");

 qed_resc_setup(cdev);

 return rc;
}
