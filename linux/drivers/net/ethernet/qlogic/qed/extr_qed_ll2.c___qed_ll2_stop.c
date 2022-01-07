
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {struct qed_dev* cdev; } ;
struct qed_dev {TYPE_1__* ll2; } ;
struct TYPE_2__ {int handle; } ;


 int DP_INFO (struct qed_dev*,char*) ;
 int qed_ll2_release_connection (struct qed_hwfn*,int ) ;
 int qed_ll2_terminate_connection (struct qed_hwfn*,int ) ;

__attribute__((used)) static int __qed_ll2_stop(struct qed_hwfn *p_hwfn)
{
 struct qed_dev *cdev = p_hwfn->cdev;
 int rc;

 rc = qed_ll2_terminate_connection(p_hwfn, cdev->ll2->handle);
 if (rc)
  DP_INFO(cdev, "Failed to terminate LL2 connection\n");

 qed_ll2_release_connection(p_hwfn, cdev->ll2->handle);

 return rc;
}
