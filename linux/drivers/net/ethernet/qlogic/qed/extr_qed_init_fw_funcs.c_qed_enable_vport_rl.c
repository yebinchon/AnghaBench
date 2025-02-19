
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 scalar_t__ QM_BYPASS_EN ;
 int QM_REG_AFULLQMBYPTHRGLBLRL_RT_OFFSET ;
 int QM_REG_RLGLBLENABLE_RT_OFFSET ;
 int QM_REG_RLGLBLPERIODTIMER_0_RT_OFFSET ;
 int QM_REG_RLGLBLPERIOD_0_RT_OFFSET ;
 int QM_RL_PERIOD_CLK_25M ;
 int QM_VP_RL_BYPASS_THRESH_SPEED ;
 int STORE_RT_REG (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static void qed_enable_vport_rl(struct qed_hwfn *p_hwfn, bool vport_rl_en)
{
 STORE_RT_REG(p_hwfn, QM_REG_RLGLBLENABLE_RT_OFFSET,
       vport_rl_en ? 1 : 0);
 if (vport_rl_en) {

  STORE_RT_REG(p_hwfn,
        QM_REG_RLGLBLPERIOD_0_RT_OFFSET,
        QM_RL_PERIOD_CLK_25M);
  STORE_RT_REG(p_hwfn,
        QM_REG_RLGLBLPERIODTIMER_0_RT_OFFSET,
        QM_RL_PERIOD_CLK_25M);


  if (QM_BYPASS_EN)
   STORE_RT_REG(p_hwfn,
         QM_REG_AFULLQMBYPTHRGLBLRL_RT_OFFSET,
         QM_VP_RL_BYPASS_THRESH_SPEED);
 }
}
