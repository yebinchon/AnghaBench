
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ionic_cmd_opcode { ____Placeholder_ionic_cmd_opcode } ionic_cmd_opcode ;
__attribute__((used)) static const char *ionic_opcode_to_str(enum ionic_cmd_opcode opcode)
{
 switch (opcode) {
 case 144:
  return "IONIC_CMD_NOP";
 case 150:
  return "IONIC_CMD_INIT";
 case 132:
  return "IONIC_CMD_RESET";
 case 151:
  return "IONIC_CMD_IDENTIFY";
 case 152:
  return "IONIC_CMD_GETATTR";
 case 128:
  return "IONIC_CMD_SETATTR";
 case 142:
  return "IONIC_CMD_PORT_IDENTIFY";
 case 141:
  return "IONIC_CMD_PORT_INIT";
 case 140:
  return "IONIC_CMD_PORT_RESET";
 case 143:
  return "IONIC_CMD_PORT_GETATTR";
 case 139:
  return "IONIC_CMD_PORT_SETATTR";
 case 147:
  return "IONIC_CMD_LIF_INIT";
 case 146:
  return "IONIC_CMD_LIF_RESET";
 case 148:
  return "IONIC_CMD_LIF_IDENTIFY";
 case 145:
  return "IONIC_CMD_LIF_SETATTR";
 case 149:
  return "IONIC_CMD_LIF_GETATTR";
 case 129:
  return "IONIC_CMD_RX_MODE_SET";
 case 131:
  return "IONIC_CMD_RX_FILTER_ADD";
 case 130:
  return "IONIC_CMD_RX_FILTER_DEL";
 case 137:
  return "IONIC_CMD_Q_INIT";
 case 138:
  return "IONIC_CMD_Q_CONTROL";
 case 133:
  return "IONIC_CMD_RDMA_RESET_LIF";
 case 134:
  return "IONIC_CMD_RDMA_CREATE_EQ";
 case 135:
  return "IONIC_CMD_RDMA_CREATE_CQ";
 case 136:
  return "IONIC_CMD_RDMA_CREATE_ADMINQ";
 case 153:
  return "IONIC_CMD_FW_DOWNLOAD";
 case 154:
  return "IONIC_CMD_FW_CONTROL";
 default:
  return "DEVCMD_UNKNOWN";
 }
}
