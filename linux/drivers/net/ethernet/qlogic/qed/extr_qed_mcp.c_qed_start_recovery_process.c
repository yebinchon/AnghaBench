
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {struct qed_dev* cdev; } ;
struct qed_dev {scalar_t__ recov_in_prog; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EAGAIN ;
 int MISC_REG_AEU_GENERAL_ATTN_35 ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

int qed_start_recovery_process(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 struct qed_dev *cdev = p_hwfn->cdev;

 if (cdev->recov_in_prog) {
  DP_NOTICE(p_hwfn,
     "Avoid triggering a recovery since such a process is already in progress\n");
  return -EAGAIN;
 }

 DP_NOTICE(p_hwfn, "Triggering a recovery process\n");
 qed_wr(p_hwfn, p_ptt, MISC_REG_AEU_GENERAL_ATTN_35, 0x1);

 return 0;
}
