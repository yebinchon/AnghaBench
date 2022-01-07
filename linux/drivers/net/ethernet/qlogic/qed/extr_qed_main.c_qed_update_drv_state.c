
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;


 int EAGAIN ;
 scalar_t__ IS_VF (struct qed_dev*) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int QED_OV_DRIVER_STATE_ACTIVE ;
 int QED_OV_DRIVER_STATE_DISABLED ;
 int qed_mcp_ov_update_driver_state (struct qed_hwfn*,struct qed_ptt*,int ) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;

__attribute__((used)) static int qed_update_drv_state(struct qed_dev *cdev, bool active)
{
 struct qed_hwfn *hwfn = QED_LEADING_HWFN(cdev);
 struct qed_ptt *ptt;
 int status = 0;

 if (IS_VF(cdev))
  return 0;

 ptt = qed_ptt_acquire(hwfn);
 if (!ptt)
  return -EAGAIN;

 status = qed_mcp_ov_update_driver_state(hwfn, ptt, active ?
      QED_OV_DRIVER_STATE_ACTIVE :
      QED_OV_DRIVER_STATE_DISABLED);

 qed_ptt_release(hwfn, ptt);

 return status;
}
