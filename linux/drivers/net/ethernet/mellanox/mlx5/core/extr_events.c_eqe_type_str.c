
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static const char *eqe_type_str(u8 type)
{
 switch (type) {
 case 156:
  return "MLX5_EVENT_TYPE_COMP";
 case 142:
  return "MLX5_EVENT_TYPE_PATH_MIG";
 case 157:
  return "MLX5_EVENT_TYPE_COMM_EST";
 case 136:
  return "MLX5_EVENT_TYPE_SQ_DRAINED";
 case 134:
  return "MLX5_EVENT_TYPE_SRQ_LAST_WQE";
 case 133:
  return "MLX5_EVENT_TYPE_SRQ_RQ_LIMIT";
 case 155:
  return "MLX5_EVENT_TYPE_CQ_ERROR";
 case 129:
  return "MLX5_EVENT_TYPE_WQ_CATAS_ERROR";
 case 141:
  return "MLX5_EVENT_TYPE_PATH_MIG_FAILED";
 case 128:
  return "MLX5_EVENT_TYPE_WQ_INVAL_REQ_ERROR";
 case 130:
  return "MLX5_EVENT_TYPE_WQ_ACCESS_ERROR";
 case 135:
  return "MLX5_EVENT_TYPE_SRQ_CATAS_ERROR";
 case 147:
  return "MLX5_EVENT_TYPE_INTERNAL_ERROR";
 case 140:
  return "MLX5_EVENT_TYPE_PORT_CHANGE";
 case 148:
  return "MLX5_EVENT_TYPE_GPIO_EVENT";
 case 139:
  return "MLX5_EVENT_TYPE_PORT_MODULE_EVENT";
 case 131:
  return "MLX5_EVENT_TYPE_TEMP_WARN_EVENT";
 case 137:
  return "MLX5_EVENT_TYPE_REMOTE_CONFIG";
 case 154:
  return "MLX5_EVENT_TYPE_DB_BF_CONGESTION";
 case 132:
  return "MLX5_EVENT_TYPE_STALL_EVENT";
 case 158:
  return "MLX5_EVENT_TYPE_CMD";
 case 152:
  return "MLX5_EVENT_TYPE_ESW_FUNCTIONS_CHANGED";
 case 143:
  return "MLX5_EVENT_TYPE_PAGE_REQUEST";
 case 144:
  return "MLX5_EVENT_TYPE_PAGE_FAULT";
 case 138:
  return "MLX5_EVENT_TYPE_PPS_EVENT";
 case 145:
  return "MLX5_EVENT_TYPE_NIC_VPORT_CHANGE";
 case 151:
  return "MLX5_EVENT_TYPE_FPGA_ERROR";
 case 150:
  return "MLX5_EVENT_TYPE_FPGA_QP_ERROR";
 case 149:
  return "MLX5_EVENT_TYPE_GENERAL_EVENT";
 case 146:
  return "MLX5_EVENT_TYPE_MONITOR_COUNTER";
 case 153:
  return "MLX5_EVENT_TYPE_DEVICE_TRACER";
 default:
  return "Unrecognized event";
 }
}
