
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_dev {int * hwfns; } ;


 scalar_t__ IS_PF (struct qed_dev*) ;
 int qed_vf_check_mac (int *,int *) ;

__attribute__((used)) static bool qed_check_mac(struct qed_dev *cdev, u8 *mac)
{
 if (IS_PF(cdev))
  return 1;

 return qed_vf_check_mac(&cdev->hwfns[0], mac);
}
