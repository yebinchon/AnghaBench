
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct mcp_file_att {int nvm_start_addr; int len; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_NON_ALIGNED_NVRAM_IMAGE ;
 int DBG_STATUS_NVRAM_GET_IMAGE_FAILED ;
 int DBG_STATUS_OK ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,int,int) ;
 int DRV_MSG_CODE_NVM_GET_FILE_ATT ;
 int FW_MSG_CODE_MASK ;
 int FW_MSG_CODE_NVM_OK ;
 int QED_MSG_DEBUG ;
 int qed_mcp_nvm_rd_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int,int*,int*,int*,int*) ;

__attribute__((used)) static enum dbg_status qed_find_nvram_image(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         u32 image_type,
         u32 *nvram_offset_bytes,
         u32 *nvram_size_bytes)
{
 u32 ret_mcp_resp, ret_mcp_param, ret_txn_size;
 struct mcp_file_att file_att;
 int nvm_result;


 nvm_result = qed_mcp_nvm_rd_cmd(p_hwfn,
     p_ptt,
     DRV_MSG_CODE_NVM_GET_FILE_ATT,
     image_type,
     &ret_mcp_resp,
     &ret_mcp_param,
     &ret_txn_size, (u32 *)&file_att);


 if (nvm_result ||
     (ret_mcp_resp & FW_MSG_CODE_MASK) != FW_MSG_CODE_NVM_OK)
  return DBG_STATUS_NVRAM_GET_IMAGE_FAILED;


 *nvram_offset_bytes = file_att.nvm_start_addr;
 *nvram_size_bytes = file_att.len;

 DP_VERBOSE(p_hwfn,
     QED_MSG_DEBUG,
     "find_nvram_image: found NVRAM image of type %d in NVRAM offset %d bytes with size %d bytes\n",
     image_type, *nvram_offset_bytes, *nvram_size_bytes);


 if (*nvram_size_bytes & 0x3)
  return DBG_STATUS_NON_ALIGNED_NVRAM_IMAGE;

 return DBG_STATUS_OK;
}
