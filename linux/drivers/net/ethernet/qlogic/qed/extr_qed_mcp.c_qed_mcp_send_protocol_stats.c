
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qed_mcp_protocol_stats {int dummy; } qed_mcp_protocol_stats ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_mb_params {int data_src_size; union qed_mcp_protocol_stats* p_data_src; int param; int cmd; } ;
struct qed_hwfn {int cdev; } ;
typedef int stats ;
typedef int mb_params ;
typedef enum qed_mcp_protocol_type { ____Placeholder_qed_mcp_protocol_type } qed_mcp_protocol_type ;
typedef enum MFW_DRV_MSG_TYPE { ____Placeholder_MFW_DRV_MSG_TYPE } MFW_DRV_MSG_TYPE ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DRV_MSG_CODE_GET_STATS ;
 int DRV_MSG_CODE_STATS_TYPE_FCOE ;
 int DRV_MSG_CODE_STATS_TYPE_ISCSI ;
 int DRV_MSG_CODE_STATS_TYPE_LAN ;
 int DRV_MSG_CODE_STATS_TYPE_RDMA ;




 int QED_MCP_FCOE_STATS ;
 int QED_MCP_ISCSI_STATS ;
 int QED_MCP_LAN_STATS ;
 int QED_MCP_RDMA_STATS ;
 int memset (struct qed_mcp_mb_params*,int ,int) ;
 int qed_get_protocol_stats (int ,int,union qed_mcp_protocol_stats*) ;
 int qed_mcp_cmd_and_union (struct qed_hwfn*,struct qed_ptt*,struct qed_mcp_mb_params*) ;

__attribute__((used)) static void qed_mcp_send_protocol_stats(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt,
     enum MFW_DRV_MSG_TYPE type)
{
 enum qed_mcp_protocol_type stats_type;
 union qed_mcp_protocol_stats stats;
 struct qed_mcp_mb_params mb_params;
 u32 hsi_param;

 switch (type) {
 case 129:
  stats_type = QED_MCP_LAN_STATS;
  hsi_param = DRV_MSG_CODE_STATS_TYPE_LAN;
  break;
 case 131:
  stats_type = QED_MCP_FCOE_STATS;
  hsi_param = DRV_MSG_CODE_STATS_TYPE_FCOE;
  break;
 case 130:
  stats_type = QED_MCP_ISCSI_STATS;
  hsi_param = DRV_MSG_CODE_STATS_TYPE_ISCSI;
  break;
 case 128:
  stats_type = QED_MCP_RDMA_STATS;
  hsi_param = DRV_MSG_CODE_STATS_TYPE_RDMA;
  break;
 default:
  DP_NOTICE(p_hwfn, "Invalid protocol type %d\n", type);
  return;
 }

 qed_get_protocol_stats(p_hwfn->cdev, stats_type, &stats);

 memset(&mb_params, 0, sizeof(mb_params));
 mb_params.cmd = DRV_MSG_CODE_GET_STATS;
 mb_params.param = hsi_param;
 mb_params.p_data_src = &stats;
 mb_params.data_src_size = sizeof(stats);
 qed_mcp_cmd_and_union(p_hwfn, p_ptt, &mb_params);
}
