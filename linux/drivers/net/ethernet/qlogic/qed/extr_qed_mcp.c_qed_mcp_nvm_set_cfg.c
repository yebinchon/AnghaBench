
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DRV_MB_PARAM_NVM_CFG_OPTION_ALL ;
 int DRV_MB_PARAM_NVM_CFG_OPTION_COMMIT ;
 int DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_ID ;
 int DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_SEL ;
 int DRV_MB_PARAM_NVM_CFG_OPTION_FREE ;
 int DRV_MB_PARAM_NVM_CFG_OPTION_ID ;
 int DRV_MB_PARAM_NVM_CFG_OPTION_INIT ;
 int DRV_MSG_CODE_SET_NVM_CFG_OPTION ;
 int QED_MFW_SET_FIELD (int ,int ,int) ;
 int QED_NVM_CFG_OPTION_ALL ;
 int QED_NVM_CFG_OPTION_COMMIT ;
 int QED_NVM_CFG_OPTION_ENTITY_SEL ;
 int QED_NVM_CFG_OPTION_FREE ;
 int QED_NVM_CFG_OPTION_INIT ;
 int qed_mcp_nvm_wr_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,int *,int *,int ,int *) ;

int qed_mcp_nvm_set_cfg(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt,
   u16 option_id, u8 entity_id, u16 flags, u8 *p_buf,
   u32 len)
{
 u32 mb_param = 0, resp, param;

 QED_MFW_SET_FIELD(mb_param, DRV_MB_PARAM_NVM_CFG_OPTION_ID, option_id);
 if (flags & QED_NVM_CFG_OPTION_ALL)
  QED_MFW_SET_FIELD(mb_param,
      DRV_MB_PARAM_NVM_CFG_OPTION_ALL, 1);
 if (flags & QED_NVM_CFG_OPTION_INIT)
  QED_MFW_SET_FIELD(mb_param,
      DRV_MB_PARAM_NVM_CFG_OPTION_INIT, 1);
 if (flags & QED_NVM_CFG_OPTION_COMMIT)
  QED_MFW_SET_FIELD(mb_param,
      DRV_MB_PARAM_NVM_CFG_OPTION_COMMIT, 1);
 if (flags & QED_NVM_CFG_OPTION_FREE)
  QED_MFW_SET_FIELD(mb_param,
      DRV_MB_PARAM_NVM_CFG_OPTION_FREE, 1);
 if (flags & QED_NVM_CFG_OPTION_ENTITY_SEL) {
  QED_MFW_SET_FIELD(mb_param,
      DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_SEL, 1);
  QED_MFW_SET_FIELD(mb_param,
      DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_ID,
      entity_id);
 }

 return qed_mcp_nvm_wr_cmd(p_hwfn, p_ptt,
      DRV_MSG_CODE_SET_NVM_CFG_OPTION,
      mb_param, &resp, &param, len, (u32 *)p_buf);
}
