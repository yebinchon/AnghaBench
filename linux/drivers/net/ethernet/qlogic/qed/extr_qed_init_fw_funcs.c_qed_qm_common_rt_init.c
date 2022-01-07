
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_qm_common_rt_init_params {int pf_wfq_en; int vport_wfq_en; int pf_rl_en; int vport_rl_en; int port_params; int max_phys_tcs_per_port; int max_ports_per_engine; } ;
struct qed_hwfn {int dummy; } ;


 int QM_BYTE_CRD_EN ;
 int QM_OPPOR_FW_STOP_DEF ;
 int QM_OPPOR_LINE_VOQ_DEF ;
 int QM_OPPOR_PQ_EMPTY_DEF ;
 int QM_REG_AFULLOPRTNSTCCRDMASK_RT_OFFSET ;
 int QM_RF_OPPORTUNISTIC_MASK_BYTEVOQ_SHIFT ;
 int QM_RF_OPPORTUNISTIC_MASK_FWPAUSE_SHIFT ;
 int QM_RF_OPPORTUNISTIC_MASK_LINEVOQ_SHIFT ;
 int QM_RF_OPPORTUNISTIC_MASK_PFRL_SHIFT ;
 int QM_RF_OPPORTUNISTIC_MASK_PFWFQ_SHIFT ;
 int QM_RF_OPPORTUNISTIC_MASK_QUEUEEMPTY_SHIFT ;
 int QM_RF_OPPORTUNISTIC_MASK_VPQCNRL_SHIFT ;
 int QM_RF_OPPORTUNISTIC_MASK_VPWFQ_SHIFT ;
 int STORE_RT_REG (struct qed_hwfn*,int ,int) ;
 int qed_btb_blocks_rt_init (struct qed_hwfn*,int ,int ,int ) ;
 int qed_cmdq_lines_rt_init (struct qed_hwfn*,int ,int ,int ) ;
 int qed_enable_pf_rl (struct qed_hwfn*,int) ;
 int qed_enable_pf_wfq (struct qed_hwfn*,int) ;
 int qed_enable_vport_rl (struct qed_hwfn*,int) ;
 int qed_enable_vport_wfq (struct qed_hwfn*,int) ;

int qed_qm_common_rt_init(struct qed_hwfn *p_hwfn,
     struct qed_qm_common_rt_init_params *p_params)
{

 u32 mask = (QM_OPPOR_LINE_VOQ_DEF <<
      QM_RF_OPPORTUNISTIC_MASK_LINEVOQ_SHIFT) |
     (QM_BYTE_CRD_EN << QM_RF_OPPORTUNISTIC_MASK_BYTEVOQ_SHIFT) |
     (p_params->pf_wfq_en <<
      QM_RF_OPPORTUNISTIC_MASK_PFWFQ_SHIFT) |
     (p_params->vport_wfq_en <<
      QM_RF_OPPORTUNISTIC_MASK_VPWFQ_SHIFT) |
     (p_params->pf_rl_en <<
      QM_RF_OPPORTUNISTIC_MASK_PFRL_SHIFT) |
     (p_params->vport_rl_en <<
      QM_RF_OPPORTUNISTIC_MASK_VPQCNRL_SHIFT) |
     (QM_OPPOR_FW_STOP_DEF <<
      QM_RF_OPPORTUNISTIC_MASK_FWPAUSE_SHIFT) |
     (QM_OPPOR_PQ_EMPTY_DEF <<
      QM_RF_OPPORTUNISTIC_MASK_QUEUEEMPTY_SHIFT);

 STORE_RT_REG(p_hwfn, QM_REG_AFULLOPRTNSTCCRDMASK_RT_OFFSET, mask);


 qed_enable_pf_rl(p_hwfn, p_params->pf_rl_en);


 qed_enable_pf_wfq(p_hwfn, p_params->pf_wfq_en);


 qed_enable_vport_rl(p_hwfn, p_params->vport_rl_en);


 qed_enable_vport_wfq(p_hwfn, p_params->vport_wfq_en);


 qed_cmdq_lines_rt_init(p_hwfn,
          p_params->max_ports_per_engine,
          p_params->max_phys_tcs_per_port,
          p_params->port_params);


 qed_btb_blocks_rt_init(p_hwfn,
          p_params->max_ports_per_engine,
          p_params->max_phys_tcs_per_port,
          p_params->port_params);

 return 0;
}
