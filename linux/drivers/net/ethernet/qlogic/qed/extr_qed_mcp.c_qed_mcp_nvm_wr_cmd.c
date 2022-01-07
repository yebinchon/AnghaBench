
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef void* u32 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_mb_params {void** p_data_src; void* mcp_param; void* mcp_resp; scalar_t__ data_src_size; void* param; void* cmd; } ;
struct TYPE_2__ {int valid; } ;
struct qed_hwfn {TYPE_1__ nvm_info; } ;
typedef int mb_params ;


 int memset (struct qed_mcp_mb_params*,int ,int) ;
 int qed_mcp_cmd_and_union (struct qed_hwfn*,struct qed_ptt*,struct qed_mcp_mb_params*) ;

__attribute__((used)) static int
qed_mcp_nvm_wr_cmd(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt,
     u32 cmd,
     u32 param,
     u32 *o_mcp_resp,
     u32 *o_mcp_param, u32 i_txn_size, u32 *i_buf)
{
 struct qed_mcp_mb_params mb_params;
 int rc;

 memset(&mb_params, 0, sizeof(mb_params));
 mb_params.cmd = cmd;
 mb_params.param = param;
 mb_params.p_data_src = i_buf;
 mb_params.data_src_size = (u8)i_txn_size;
 rc = qed_mcp_cmd_and_union(p_hwfn, p_ptt, &mb_params);
 if (rc)
  return rc;

 *o_mcp_resp = mb_params.mcp_resp;
 *o_mcp_param = mb_params.mcp_param;


 p_hwfn->nvm_info.valid = 0;

 return 0;
}
