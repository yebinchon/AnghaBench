
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_qm_info {int num_pqs; int start_pq; } ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {int hw_mode; } ;
struct qed_hwfn {TYPE_1__ hw_info; int rel_pf_id; struct qed_qm_info qm_info; } ;


 int EINVAL ;
 int PHASE_QM_PF ;
 int qed_init_clear_rt_data (struct qed_hwfn*) ;
 int qed_init_qm_info (struct qed_hwfn*) ;
 int qed_init_run (struct qed_hwfn*,struct qed_ptt*,int ,int ,int ) ;
 int qed_qm_init_pf (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_send_qm_stop_cmd (struct qed_hwfn*,struct qed_ptt*,int,int,int ,int ) ;
 int qm_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int qed_qm_reconf(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;
 bool b_rc;
 int rc;


 qed_init_qm_info(p_hwfn);


 spin_lock_bh(&qm_lock);
 b_rc = qed_send_qm_stop_cmd(p_hwfn, p_ptt, 0, 1,
        qm_info->start_pq, qm_info->num_pqs);
 spin_unlock_bh(&qm_lock);
 if (!b_rc)
  return -EINVAL;


 qed_init_clear_rt_data(p_hwfn);


 qed_qm_init_pf(p_hwfn, p_ptt, 0);


 rc = qed_init_run(p_hwfn, p_ptt, PHASE_QM_PF, p_hwfn->rel_pf_id,
     p_hwfn->hw_info.hw_mode);
 if (rc)
  return rc;


 spin_lock_bh(&qm_lock);
 b_rc = qed_send_qm_stop_cmd(p_hwfn, p_ptt, 1, 1,
        qm_info->start_pq, qm_info->num_pqs);
 spin_unlock_bh(&qm_lock);
 if (!b_rc)
  return -EINVAL;

 return 0;
}
