
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;
typedef enum qed_led_mode { ____Placeholder_qed_led_mode } qed_led_mode ;


 int EAGAIN ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int qed_mcp_set_led (struct qed_hwfn*,struct qed_ptt*,int) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;

__attribute__((used)) static int qed_set_led(struct qed_dev *cdev, enum qed_led_mode mode)
{
 struct qed_hwfn *hwfn = QED_LEADING_HWFN(cdev);
 struct qed_ptt *ptt;
 int status = 0;

 ptt = qed_ptt_acquire(hwfn);
 if (!ptt)
  return -EAGAIN;

 status = qed_mcp_set_led(hwfn, ptt, mode);

 qed_ptt_release(hwfn, ptt);

 return status;
}
