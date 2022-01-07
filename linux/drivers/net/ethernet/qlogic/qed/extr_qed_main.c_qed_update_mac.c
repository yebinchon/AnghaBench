
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;


 int EAGAIN ;
 scalar_t__ IS_VF (struct qed_dev*) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int QED_OV_CLIENT_DRV ;
 int qed_mcp_ov_update_current_config (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_mcp_ov_update_mac (struct qed_hwfn*,struct qed_ptt*,int *) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;

__attribute__((used)) static int qed_update_mac(struct qed_dev *cdev, u8 *mac)
{
 struct qed_hwfn *hwfn = QED_LEADING_HWFN(cdev);
 struct qed_ptt *ptt;
 int status = 0;

 if (IS_VF(cdev))
  return 0;

 ptt = qed_ptt_acquire(hwfn);
 if (!ptt)
  return -EAGAIN;

 status = qed_mcp_ov_update_mac(hwfn, ptt, mac);
 if (status)
  goto out;

 status = qed_mcp_ov_update_current_config(hwfn, ptt, QED_OV_CLIENT_DRV);

out:
 qed_ptt_release(hwfn, ptt);
 return status;
}
