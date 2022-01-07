
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int mcp_nvm_resp; } ;


 int EBUSY ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int memcpy (int *,int *,int) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;

int qed_mcp_nvm_resp(struct qed_dev *cdev, u8 *p_buf)
{
 struct qed_hwfn *p_hwfn = QED_LEADING_HWFN(cdev);
 struct qed_ptt *p_ptt;

 p_ptt = qed_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return -EBUSY;

 memcpy(p_buf, &cdev->mcp_nvm_resp, sizeof(cdev->mcp_nvm_resp));
 qed_ptt_release(p_hwfn, p_ptt);

 return 0;
}
