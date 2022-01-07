
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_ll2_stats {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {TYPE_1__* ll2; } ;
struct TYPE_2__ {int handle; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;
 struct qed_hwfn* QED_AFFIN_HWFN (struct qed_dev*) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int __qed_ll2_get_stats (struct qed_hwfn*,int ,struct qed_ll2_stats*) ;
 int qed_ll2_get_stats (struct qed_hwfn*,int ,struct qed_ll2_stats*) ;
 int qed_ll2_is_storage_eng1 (struct qed_dev*) ;

__attribute__((used)) static int qed_ll2_stats(struct qed_dev *cdev, struct qed_ll2_stats *stats)
{
 bool b_is_storage_eng1 = qed_ll2_is_storage_eng1(cdev);
 struct qed_hwfn *p_hwfn = QED_AFFIN_HWFN(cdev);
 int rc;

 if (!cdev->ll2)
  return -EINVAL;

 rc = qed_ll2_get_stats(p_hwfn, cdev->ll2->handle, stats);
 if (rc) {
  DP_NOTICE(p_hwfn, "Failed to get LL2 stats\n");
  return rc;
 }


 if (b_is_storage_eng1) {
  rc = __qed_ll2_get_stats(QED_LEADING_HWFN(cdev),
      cdev->ll2->handle, stats);
  if (rc) {
   DP_NOTICE(QED_LEADING_HWFN(cdev),
      "Failed to get LL2 stats on engine 0\n");
   return rc;
  }
 }

 return 0;
}
