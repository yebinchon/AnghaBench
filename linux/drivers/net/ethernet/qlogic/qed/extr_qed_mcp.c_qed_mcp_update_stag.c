
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qed_ptt {int dummy; } ;
struct TYPE_8__ {int ovlan; int hw_mode; } ;
struct qed_hwfn {TYPE_4__ hw_info; TYPE_3__* mcp_info; TYPE_1__* cdev; } ;
struct public_func {scalar_t__ ovlan_stag; } ;
struct TYPE_6__ {int ovlan; } ;
struct TYPE_7__ {TYPE_2__ func_info; } ;
struct TYPE_5__ {int mf_bits; } ;


 int DORQ_REG_PF_EXT_VID_BB_K2 ;
 int DORQ_REG_TAG1_OVRD_MODE ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,int ) ;
 int DRV_MSG_CODE_S_TAG_UPDATE_ACK ;
 int FUNC_MF_CFG_OV_STAG_MASK ;
 int MCP_PF_ID (struct qed_hwfn*) ;
 int NIG_REG_LLH_FUNC_TAG_EN ;
 int NIG_REG_LLH_FUNC_TAG_VALUE ;
 int QED_MCP_VLAN_UNSET ;
 int QED_MF_OVLAN_CLSS ;
 int QED_MSG_SP ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,int *,int *) ;
 int qed_mcp_get_shmem_func (struct qed_hwfn*,struct qed_ptt*,struct public_func*,int ) ;
 int qed_sp_pf_update_stag (struct qed_hwfn*) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void qed_mcp_update_stag(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 struct public_func shmem_info;
 u32 resp = 0, param = 0;

 qed_mcp_get_shmem_func(p_hwfn, p_ptt, &shmem_info, MCP_PF_ID(p_hwfn));

 p_hwfn->mcp_info->func_info.ovlan = (u16)shmem_info.ovlan_stag &
       FUNC_MF_CFG_OV_STAG_MASK;
 p_hwfn->hw_info.ovlan = p_hwfn->mcp_info->func_info.ovlan;
 if (test_bit(QED_MF_OVLAN_CLSS, &p_hwfn->cdev->mf_bits)) {
  if (p_hwfn->hw_info.ovlan != QED_MCP_VLAN_UNSET) {
   qed_wr(p_hwfn, p_ptt, NIG_REG_LLH_FUNC_TAG_VALUE,
          p_hwfn->hw_info.ovlan);
   qed_wr(p_hwfn, p_ptt, NIG_REG_LLH_FUNC_TAG_EN, 1);


   qed_wr(p_hwfn, p_ptt, DORQ_REG_TAG1_OVRD_MODE, 1);
   qed_wr(p_hwfn, p_ptt, DORQ_REG_PF_EXT_VID_BB_K2,
          p_hwfn->hw_info.ovlan);
  } else {
   qed_wr(p_hwfn, p_ptt, NIG_REG_LLH_FUNC_TAG_EN, 0);
   qed_wr(p_hwfn, p_ptt, NIG_REG_LLH_FUNC_TAG_VALUE, 0);
   qed_wr(p_hwfn, p_ptt, DORQ_REG_TAG1_OVRD_MODE, 0);
   qed_wr(p_hwfn, p_ptt, DORQ_REG_PF_EXT_VID_BB_K2, 0);
  }

  qed_sp_pf_update_stag(p_hwfn);
 }

 DP_VERBOSE(p_hwfn, QED_MSG_SP, "ovlan = %d hw_mode = 0x%x\n",
     p_hwfn->mcp_info->func_info.ovlan, p_hwfn->hw_info.hw_mode);


 qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_S_TAG_UPDATE_ACK, 0,
      &resp, &param);
}
