
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int port_id; int cdev; } ;


 int IS_LEAD_HWFN (struct qed_hwfn*) ;
 int NIG_REG_BRB_GATE_DNTFWD_PORT_RT_OFFSET ;
 int PGLUE_B_REG_MASTER_WRITE_PAD_ENABLE ;
 int PHASE_PORT ;
 int QED_IS_CMT (int ) ;
 int STORE_RT_REG (struct qed_hwfn*,int ,int ) ;
 int qed_init_run (struct qed_hwfn*,struct qed_ptt*,int ,int ,int) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;

__attribute__((used)) static int qed_hw_init_port(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt, int hw_mode)
{
 int rc = 0;


 if (!QED_IS_CMT(p_hwfn->cdev) || !IS_LEAD_HWFN(p_hwfn))
  STORE_RT_REG(p_hwfn, NIG_REG_BRB_GATE_DNTFWD_PORT_RT_OFFSET, 0);

 rc = qed_init_run(p_hwfn, p_ptt, PHASE_PORT, p_hwfn->port_id, hw_mode);
 if (rc)
  return rc;

 qed_wr(p_hwfn, p_ptt, PGLUE_B_REG_MASTER_WRITE_PAD_ENABLE, 0);

 return 0;
}
