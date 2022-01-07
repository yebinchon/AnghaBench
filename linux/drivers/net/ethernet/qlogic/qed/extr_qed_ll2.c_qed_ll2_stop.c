
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {int dummy; } ;
struct qed_dev {TYPE_1__* ll2; int ll2_mac_address; } ;
struct TYPE_2__ {scalar_t__ handle; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 struct qed_hwfn* QED_AFFIN_HWFN (struct qed_dev*) ;
 scalar_t__ QED_IS_ISCSI_PERSONALITY (struct qed_hwfn*) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 scalar_t__ QED_LL2_UNUSED_HANDLE ;
 int __qed_ll2_stop (struct qed_hwfn*) ;
 int eth_zero_addr (int ) ;
 int qed_ll2_is_storage_eng1 (struct qed_dev*) ;
 int qed_ll2_kill_buffers (struct qed_dev*) ;
 int qed_ll2_stop_ooo (struct qed_hwfn*) ;
 int qed_llh_remove_mac_filter (struct qed_dev*,int ,int ) ;

__attribute__((used)) static int qed_ll2_stop(struct qed_dev *cdev)
{
 bool b_is_storage_eng1 = qed_ll2_is_storage_eng1(cdev);
 struct qed_hwfn *p_hwfn = QED_AFFIN_HWFN(cdev);
 int rc = 0, rc2 = 0;

 if (cdev->ll2->handle == QED_LL2_UNUSED_HANDLE)
  return 0;

 qed_llh_remove_mac_filter(cdev, 0, cdev->ll2_mac_address);
 eth_zero_addr(cdev->ll2_mac_address);

 if (QED_IS_ISCSI_PERSONALITY(p_hwfn))
  qed_ll2_stop_ooo(p_hwfn);


 if (b_is_storage_eng1) {
  rc2 = __qed_ll2_stop(QED_LEADING_HWFN(cdev));
  if (rc2)
   DP_NOTICE(QED_LEADING_HWFN(cdev),
      "Failed to stop LL2 on engine 0\n");
 }

 rc = __qed_ll2_stop(p_hwfn);
 if (rc)
  DP_NOTICE(p_hwfn, "Failed to stop LL2\n");

 qed_ll2_kill_buffers(cdev);

 cdev->ll2->handle = QED_LL2_UNUSED_HANDLE;

 return rc | rc2;
}
