
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* p_dmae_cmd; } ;
struct qed_hwfn {int rel_pf_id; int port_id; TYPE_2__ dmae_info; } ;
struct qed_dmae_params {int src_pfid; int dst_pfid; int port_id; int src_vfid; int dst_vfid; } ;
struct TYPE_3__ {int opcode_b; int opcode; } ;


 int COMPLETION_DST ;
 int DMAE_CMD_COMP_FUNC_SHIFT ;
 int DMAE_CMD_COMP_WORD_EN_MASK ;
 int DMAE_CMD_COMP_WORD_EN_SHIFT ;
 int DMAE_CMD_DST_ADDR_RESET_MASK ;
 int DMAE_CMD_DST_ADDR_RESET_SHIFT ;
 int DMAE_CMD_DST_MASK_GRC ;
 int DMAE_CMD_DST_MASK_PCIE ;
 int DMAE_CMD_DST_PF_ID_MASK ;
 int DMAE_CMD_DST_PF_ID_SHIFT ;
 int DMAE_CMD_DST_SHIFT ;
 int DMAE_CMD_DST_VF_ID_MASK ;
 int DMAE_CMD_DST_VF_ID_SHIFT ;
 int DMAE_CMD_DST_VF_ID_VALID_SHIFT ;
 int DMAE_CMD_ENDIANITY ;
 int DMAE_CMD_ENDIANITY_MODE_SHIFT ;
 int DMAE_CMD_PORT_ID_SHIFT ;
 int DMAE_CMD_SRC_ADDR_RESET_MASK ;
 int DMAE_CMD_SRC_ADDR_RESET_SHIFT ;
 int DMAE_CMD_SRC_MASK_GRC ;
 int DMAE_CMD_SRC_MASK_PCIE ;
 int DMAE_CMD_SRC_PF_ID_MASK ;
 int DMAE_CMD_SRC_PF_ID_SHIFT ;
 int DMAE_CMD_SRC_SHIFT ;
 int DMAE_CMD_SRC_VF_ID_MASK ;
 int DMAE_CMD_SRC_VF_ID_SHIFT ;
 int DMAE_CMD_SRC_VF_ID_VALID_SHIFT ;
 int PF_DST ;
 int PF_SRC ;
 int PORT ;
 scalar_t__ QED_DMAE_FLAGS_IS_SET (struct qed_dmae_params*,int ) ;
 int VF_DST ;
 int VF_SRC ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void qed_dmae_opcode(struct qed_hwfn *p_hwfn,
       const u8 is_src_type_grc,
       const u8 is_dst_type_grc,
       struct qed_dmae_params *p_params)
{
 u8 src_pfid, dst_pfid, port_id;
 u16 opcode_b = 0;
 u32 opcode = 0;





 opcode |= (is_src_type_grc ? DMAE_CMD_SRC_MASK_GRC
       : DMAE_CMD_SRC_MASK_PCIE) <<
     DMAE_CMD_SRC_SHIFT;
 src_pfid = QED_DMAE_FLAGS_IS_SET(p_params, PF_SRC) ?
     p_params->src_pfid : p_hwfn->rel_pf_id;
 opcode |= ((src_pfid & DMAE_CMD_SRC_PF_ID_MASK) <<
     DMAE_CMD_SRC_PF_ID_SHIFT);


 opcode |= (is_dst_type_grc ? DMAE_CMD_DST_MASK_GRC
       : DMAE_CMD_DST_MASK_PCIE) <<
     DMAE_CMD_DST_SHIFT;
 dst_pfid = QED_DMAE_FLAGS_IS_SET(p_params, PF_DST) ?
     p_params->dst_pfid : p_hwfn->rel_pf_id;
 opcode |= ((dst_pfid & DMAE_CMD_DST_PF_ID_MASK) <<
     DMAE_CMD_DST_PF_ID_SHIFT);





 opcode |= (DMAE_CMD_COMP_WORD_EN_MASK << DMAE_CMD_COMP_WORD_EN_SHIFT);
 opcode |= (DMAE_CMD_SRC_ADDR_RESET_MASK <<
     DMAE_CMD_SRC_ADDR_RESET_SHIFT);

 if (QED_DMAE_FLAGS_IS_SET(p_params, COMPLETION_DST))
  opcode |= (1 << DMAE_CMD_COMP_FUNC_SHIFT);

 opcode |= (DMAE_CMD_ENDIANITY << DMAE_CMD_ENDIANITY_MODE_SHIFT);

 port_id = (QED_DMAE_FLAGS_IS_SET(p_params, PORT)) ?
     p_params->port_id : p_hwfn->port_id;
 opcode |= (port_id << DMAE_CMD_PORT_ID_SHIFT);


 opcode |= (DMAE_CMD_SRC_ADDR_RESET_MASK <<
     DMAE_CMD_SRC_ADDR_RESET_SHIFT);


 opcode |= (DMAE_CMD_DST_ADDR_RESET_MASK <<
     DMAE_CMD_DST_ADDR_RESET_SHIFT);


 if (QED_DMAE_FLAGS_IS_SET(p_params, VF_SRC)) {
  opcode |= 1 << DMAE_CMD_SRC_VF_ID_VALID_SHIFT;
  opcode_b |= p_params->src_vfid << DMAE_CMD_SRC_VF_ID_SHIFT;
 } else {
  opcode_b |= DMAE_CMD_SRC_VF_ID_MASK <<
       DMAE_CMD_SRC_VF_ID_SHIFT;
 }

 if (QED_DMAE_FLAGS_IS_SET(p_params, VF_DST)) {
  opcode |= 1 << DMAE_CMD_DST_VF_ID_VALID_SHIFT;
  opcode_b |= p_params->dst_vfid << DMAE_CMD_DST_VF_ID_SHIFT;
 } else {
  opcode_b |= DMAE_CMD_DST_VF_ID_MASK << DMAE_CMD_DST_VF_ID_SHIFT;
 }

 p_hwfn->dmae_info.p_dmae_cmd->opcode = cpu_to_le32(opcode);
 p_hwfn->dmae_info.p_dmae_cmd->opcode_b = cpu_to_le16(opcode_b);
}
