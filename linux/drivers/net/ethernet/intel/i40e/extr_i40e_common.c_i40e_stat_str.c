
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_hw {char const* err_str; } ;
typedef int i40e_status ;
 int snprintf (char const*,int,char*,int) ;

const char *i40e_stat_str(struct i40e_hw *hw, i40e_status stat_err)
{
 switch (stat_err) {
 case 0:
  return "OK";
 case 144:
  return "I40E_ERR_NVM";
 case 142:
  return "I40E_ERR_NVM_CHECKSUM";
 case 138:
  return "I40E_ERR_PHY";
 case 182:
  return "I40E_ERR_CONFIG";
 case 140:
  return "I40E_ERR_PARAM";
 case 152:
  return "I40E_ERR_MAC_TYPE";
 case 129:
  return "I40E_ERR_UNKNOWN_PHY";
 case 153:
  return "I40E_ERR_LINK_SETUP";
 case 193:
  return "I40E_ERR_ADAPTER_STOPPED";
 case 164:
  return "I40E_ERR_INVALID_MAC_ADDR";
 case 180:
  return "I40E_ERR_DEVICE_NOT_SUPPORTED";
 case 151:
  return "I40E_ERR_MASTER_REQUESTS_PENDING";
 case 165:
  return "I40E_ERR_INVALID_LINK_SETTINGS";
 case 187:
  return "I40E_ERR_AUTONEG_NOT_COMPLETE";
 case 134:
  return "I40E_ERR_RESET_FAILED";
 case 131:
  return "I40E_ERR_SWFW_SYNC";
 case 147:
  return "I40E_ERR_NO_AVAILABLE_VSI";
 case 146:
  return "I40E_ERR_NO_MEMORY";
 case 184:
  return "I40E_ERR_BAD_PTR";
 case 133:
  return "I40E_ERR_RING_FULL";
 case 161:
  return "I40E_ERR_INVALID_PD_ID";
 case 159:
  return "I40E_ERR_INVALID_QP_ID";
 case 172:
  return "I40E_ERR_INVALID_CQ_ID";
 case 173:
  return "I40E_ERR_INVALID_CEQ_ID";
 case 176:
  return "I40E_ERR_INVALID_AEQ_ID";
 case 156:
  return "I40E_ERR_INVALID_SIZE";
 case 174:
  return "I40E_ERR_INVALID_ARP_INDEX";
 case 171:
  return "I40E_ERR_INVALID_FPM_FUNC_ID";
 case 137:
  return "I40E_ERR_QP_INVALID_MSG_SIZE";
 case 136:
  return "I40E_ERR_QP_TOOMANY_WRS_POSTED";
 case 170:
  return "I40E_ERR_INVALID_FRAG_COUNT";
 case 135:
  return "I40E_ERR_QUEUE_EMPTY";
 case 175:
  return "I40E_ERR_INVALID_ALIGNMENT";
 case 177:
  return "I40E_ERR_FLUSHED_QUEUE";
 case 160:
  return "I40E_ERR_INVALID_PUSH_PAGE_INDEX";
 case 166:
  return "I40E_ERR_INVALID_IMM_DATA_SIZE";
 case 130:
  return "I40E_ERR_TIMEOUT";
 case 141:
  return "I40E_ERR_OPCODE_MISMATCH";
 case 181:
  return "I40E_ERR_CQP_COMPL_ERROR";
 case 154:
  return "I40E_ERR_INVALID_VF_ID";
 case 169:
  return "I40E_ERR_INVALID_HMCFN_ID";
 case 186:
  return "I40E_ERR_BACKING_PAGE_ERROR";
 case 145:
  return "I40E_ERR_NO_PBLCHUNKS_AVAILABLE";
 case 162:
  return "I40E_ERR_INVALID_PBLE_INDEX";
 case 158:
  return "I40E_ERR_INVALID_SD_INDEX";
 case 163:
  return "I40E_ERR_INVALID_PAGE_DESC_INDEX";
 case 157:
  return "I40E_ERR_INVALID_SD_TYPE";
 case 150:
  return "I40E_ERR_MEMCPY_FAILED";
 case 167:
  return "I40E_ERR_INVALID_HMC_OBJ_INDEX";
 case 168:
  return "I40E_ERR_INVALID_HMC_OBJ_COUNT";
 case 155:
  return "I40E_ERR_INVALID_SRQ_ARM_LIMIT";
 case 132:
  return "I40E_ERR_SRQ_ENABLED";
 case 191:
  return "I40E_ERR_ADMIN_QUEUE_ERROR";
 case 188:
  return "I40E_ERR_ADMIN_QUEUE_TIMEOUT";
 case 183:
  return "I40E_ERR_BUF_TOO_SHORT";
 case 190:
  return "I40E_ERR_ADMIN_QUEUE_FULL";
 case 189:
  return "I40E_ERR_ADMIN_QUEUE_NO_WORK";
 case 185:
  return "I40E_ERR_BAD_IWARP_CQE";
 case 143:
  return "I40E_ERR_NVM_BLANK_MODE";
 case 149:
  return "I40E_ERR_NOT_IMPLEMENTED";
 case 139:
  return "I40E_ERR_PE_DOORBELL_NOT_ENABLED";
 case 179:
  return "I40E_ERR_DIAG_TEST_FAILED";
 case 148:
  return "I40E_ERR_NOT_READY";
 case 128:
  return "I40E_NOT_SUPPORTED";
 case 178:
  return "I40E_ERR_FIRMWARE_API_VERSION";
 case 192:
  return "I40E_ERR_ADMIN_QUEUE_CRITICAL_ERROR";
 }

 snprintf(hw->err_str, sizeof(hw->err_str), "%d", stat_err);
 return hw->err_str;
}
