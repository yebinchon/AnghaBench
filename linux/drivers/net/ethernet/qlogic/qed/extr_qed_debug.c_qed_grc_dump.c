
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct dbg_tools_data {scalar_t__ chip_id; scalar_t__ platform_id; TYPE_1__ bus; scalar_t__ num_ports; scalar_t__ num_regs_read; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_4__ {int grc_param; } ;


 size_t BLOCK_MCP ;
 scalar_t__ CHIP_K2 ;
 scalar_t__ DBG_BUS_STATE_IDLE ;
 int DBG_GRC_PARAM_DUMP_CM_CTX ;
 int DBG_GRC_PARAM_DUMP_IOR ;
 int DBG_GRC_PARAM_DUMP_MCP ;
 int DBG_GRC_PARAM_DUMP_PHY ;
 int DBG_GRC_PARAM_DUMP_REGS ;
 int DBG_GRC_PARAM_DUMP_RSS ;
 int DBG_GRC_PARAM_DUMP_STATIC ;
 int DBG_GRC_PARAM_DUMP_VFC ;
 int DBG_GRC_PARAM_NO_MCP ;
 int DBG_GRC_PARAM_NUM_LCIDS ;
 int DBG_GRC_PARAM_NUM_LTIDS ;
 int DBG_GRC_PARAM_PARITY_SAFE ;
 int DBG_GRC_PARAM_UNSTALL ;
 int DBG_STATUS_MCP_COULD_NOT_MASK_PRTY ;
 int DBG_STATUS_OK ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int MAX_BLOCK_ID ;
 int NUM_BIG_RAM_TYPES ;
 scalar_t__ PLATFORM_ASIC ;
 int qed_dump_common_global_params (struct qed_hwfn*,struct qed_ptt*,int*,int,int) ;
 int qed_dump_last_section (int*,int,int) ;
 int qed_dump_num_param (int*,int,char*,scalar_t__) ;
 int qed_dump_str_param (int*,int,char*,char*) ;
 int qed_grc_clear_all_prty (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_grc_dump_big_ram (struct qed_hwfn*,struct qed_ptt*,int*,int,int) ;
 int qed_grc_dump_ctx (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 int qed_grc_dump_iors (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 int qed_grc_dump_mcp (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 int qed_grc_dump_memories (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 int qed_grc_dump_modified_regs (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 int qed_grc_dump_phy (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 int qed_grc_dump_registers (struct qed_hwfn*,struct qed_ptt*,int*,int,int*,int *,int *) ;
 int qed_grc_dump_reset_regs (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 int qed_grc_dump_rss (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 int qed_grc_dump_special_regs (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 int qed_grc_dump_static_debug (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 int qed_grc_dump_vfc (struct qed_hwfn*,struct qed_ptt*,int*,int) ;
 scalar_t__ qed_grc_get_param (struct qed_hwfn*,int ) ;
 scalar_t__ qed_grc_is_included (struct qed_hwfn*,int ) ;
 int qed_grc_stall_storms (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_grc_unreset_blocks (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_mcp_mask_parities (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_update_blocks_reset_state (struct qed_hwfn*,struct qed_ptt*) ;
 TYPE_2__* s_big_ram_defs ;

__attribute__((used)) static enum dbg_status qed_grc_dump(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt,
        u32 *dump_buf,
        bool dump, u32 *num_dumped_dwords)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 bool parities_masked = 0;
 u32 offset = 0;
 u8 i;

 *num_dumped_dwords = 0;
 dev_data->num_regs_read = 0;


 if (dump)
  qed_update_blocks_reset_state(p_hwfn, p_ptt);


 offset += qed_dump_common_global_params(p_hwfn,
      p_ptt,
      dump_buf + offset, dump, 4);
 offset += qed_dump_str_param(dump_buf + offset,
         dump, "dump-type", "grc-dump");
 offset += qed_dump_num_param(dump_buf + offset,
         dump,
         "num-lcids",
         qed_grc_get_param(p_hwfn,
      DBG_GRC_PARAM_NUM_LCIDS));
 offset += qed_dump_num_param(dump_buf + offset,
         dump,
         "num-ltids",
         qed_grc_get_param(p_hwfn,
      DBG_GRC_PARAM_NUM_LTIDS));
 offset += qed_dump_num_param(dump_buf + offset,
         dump, "num-ports", dev_data->num_ports);


 if (qed_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_REGS))
  offset += qed_grc_dump_reset_regs(p_hwfn,
        p_ptt,
        dump_buf + offset, dump);


 if (dump) {
  qed_grc_unreset_blocks(p_hwfn, p_ptt);
  qed_update_blocks_reset_state(p_hwfn, p_ptt);
 }


 if (dump &&
     !qed_grc_get_param(p_hwfn, DBG_GRC_PARAM_NO_MCP)) {
  parities_masked = !qed_mcp_mask_parities(p_hwfn, p_ptt, 1);
  if (!parities_masked) {
   DP_NOTICE(p_hwfn,
      "Failed to mask parities using MFW\n");
   if (qed_grc_get_param
       (p_hwfn, DBG_GRC_PARAM_PARITY_SAFE))
    return DBG_STATUS_MCP_COULD_NOT_MASK_PRTY;
  }
 }


 if (qed_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_REGS))
  offset += qed_grc_dump_modified_regs(p_hwfn,
           p_ptt,
           dump_buf + offset, dump);


 if (dump &&
     (qed_grc_is_included(p_hwfn,
     DBG_GRC_PARAM_DUMP_IOR) ||
      qed_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_VFC)))
  qed_grc_stall_storms(p_hwfn, p_ptt, 1);


 if (qed_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_REGS)) {
  bool block_enable[MAX_BLOCK_ID];


  for (i = 0; i < MAX_BLOCK_ID; i++)
   block_enable[i] = 1;
  block_enable[BLOCK_MCP] = 0;
  offset += qed_grc_dump_registers(p_hwfn,
       p_ptt,
       dump_buf +
       offset,
       dump,
       block_enable, ((void*)0), ((void*)0));


  offset += qed_grc_dump_special_regs(p_hwfn,
          p_ptt,
          dump_buf + offset, dump);
 }


 offset += qed_grc_dump_memories(p_hwfn, p_ptt, dump_buf + offset, dump);


 if (qed_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_MCP))
  offset += qed_grc_dump_mcp(p_hwfn,
        p_ptt, dump_buf + offset, dump);


 if (qed_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_CM_CTX))
  offset += qed_grc_dump_ctx(p_hwfn,
        p_ptt, dump_buf + offset, dump);


 if (qed_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_RSS))
  offset += qed_grc_dump_rss(p_hwfn,
        p_ptt, dump_buf + offset, dump);


 for (i = 0; i < NUM_BIG_RAM_TYPES; i++)
  if (qed_grc_is_included(p_hwfn, s_big_ram_defs[i].grc_param))
   offset += qed_grc_dump_big_ram(p_hwfn,
             p_ptt,
             dump_buf + offset,
             dump, i);


 if (qed_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_IOR))
  offset += qed_grc_dump_iors(p_hwfn,
         p_ptt, dump_buf + offset, dump);


 if (qed_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_VFC))
  offset += qed_grc_dump_vfc(p_hwfn,
        p_ptt, dump_buf + offset, dump);


 if (qed_grc_is_included(p_hwfn,
    DBG_GRC_PARAM_DUMP_PHY) && dev_data->chip_id ==
     CHIP_K2 && dev_data->platform_id == PLATFORM_ASIC)
  offset += qed_grc_dump_phy(p_hwfn,
        p_ptt, dump_buf + offset, dump);


 if (qed_grc_is_included(p_hwfn,
    DBG_GRC_PARAM_DUMP_STATIC) &&
     (!dump || dev_data->bus.state == DBG_BUS_STATE_IDLE))
  offset += qed_grc_dump_static_debug(p_hwfn,
          p_ptt,
          dump_buf + offset, dump);


 offset += qed_dump_last_section(dump_buf, offset, dump);

 if (dump) {

  if (qed_grc_get_param(p_hwfn, DBG_GRC_PARAM_UNSTALL))
   qed_grc_stall_storms(p_hwfn, p_ptt, 0);


  qed_grc_clear_all_prty(p_hwfn, p_ptt);


  if (parities_masked)
   qed_mcp_mask_parities(p_hwfn, p_ptt, 0);
 }

 *num_dumped_dwords = offset;

 return DBG_STATUS_OK;
}
