
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IS_ERROR_TIME_OUT_FLAG ;



const char *fimc_is_strerr(unsigned int error)
{
 error &= ~IS_ERROR_TIME_OUT_FLAG;

 switch (error) {

 case 160:
  return "IS_ERROR_INVALID_COMMAND";
 case 136:
  return "IS_ERROR_REQUEST_FAIL";
 case 156:
  return "IS_ERROR_INVALID_SCENARIO";
 case 155:
  return "IS_ERROR_INVALID_SENSORID";
 case 158:
  return "IS_ERROR_INVALID_MODE_CHANGE";
 case 159:
  return "IS_ERROR_INVALID_MAGIC_NUMBER";
 case 154:
  return "IS_ERROR_INVALID_SETFILE_HDR";
 case 180:
  return "IS_ERROR_BUSY";
 case 131:
  return "IS_ERROR_SET_PARAMETER";
 case 157:
  return "IS_ERROR_INVALID_PATH";
 case 137:
  return "IS_ERROR_OPEN_SENSOR_FAIL";
 case 165:
  return "IS_ERROR_ENTRY_MSG_THREAD_DOWN";
 case 149:
  return "IS_ERROR_ISP_FRAME_END_NOT_DONE";
 case 174:
  return "IS_ERROR_DRC_FRAME_END_NOT_DONE";
 case 135:
  return "IS_ERROR_SCALERC_FRAME_END_NOT_DONE";
 case 138:
  return "IS_ERROR_ODC_FRAME_END_NOT_DONE";
 case 179:
  return "IS_ERROR_DIS_FRAME_END_NOT_DONE";
 case 130:
  return "IS_ERROR_TDNR_FRAME_END_NOT_DONE";
 case 134:
  return "IS_ERROR_SCALERP_FRAME_END_NOT_DONE";
 case 128:
  return "IS_ERROR_WAIT_STREAM_OFF_NOT_DONE";
 case 139:
  return "IS_ERROR_NO_MSG_IS_RECEIVED";
 case 133:
  return "IS_ERROR_SENSOR_MSG_FAIL";
 case 146:
  return "IS_ERROR_ISP_MSG_FAIL";
 case 171:
  return "IS_ERROR_DRC_MSG_FAIL";
 case 140:
  return "IS_ERROR_LHFD_MSG_FAIL";
 case 129:
  return "IS_ERROR_UNKNOWN";


 case 132:
  return "IS_ERROR_SENSOR_PWRDN_FAIL";


 case 143:
  return "IS_ERROR_ISP_PWRDN_FAIL";
 case 145:
  return "IS_ERROR_ISP_MULTIPLE_INPUT";
 case 153:
  return "IS_ERROR_ISP_ABSENT_INPUT";
 case 152:
  return "IS_ERROR_ISP_ABSENT_OUTPUT";
 case 144:
  return "IS_ERROR_ISP_NONADJACENT_OUTPUT";
 case 150:
  return "IS_ERROR_ISP_FORMAT_MISMATCH";
 case 142:
  return "IS_ERROR_ISP_WIDTH_MISMATCH";
 case 147:
  return "IS_ERROR_ISP_HEIGHT_MISMATCH";
 case 151:
  return "IS_ERROR_ISP_BITWIDTH_MISMATCH";
 case 148:
  return "IS_ERROR_ISP_FRAME_END_TIME_OUT";


 case 167:
  return "IS_ERROR_DRC_PWRDN_FAIL";
 case 170:
  return "IS_ERROR_DRC_MULTIPLE_INPUT";
 case 178:
  return "IS_ERROR_DRC_ABSENT_INPUT";
 case 169:
  return "IS_ERROR_DRC_NONADJACENT_INPUT";
 case 177:
  return "IS_ERROR_DRC_ABSENT_OUTPUT";
 case 168:
  return "IS_ERROR_DRC_NONADJACENT_OUTPUT";
 case 175:
  return "IS_ERROR_DRC_FORMAT_MISMATCH";
 case 166:
  return "IS_ERROR_DRC_WIDTH_MISMATCH";
 case 172:
  return "IS_ERROR_DRC_HEIGHT_MISMATCH";
 case 176:
  return "IS_ERROR_DRC_BITWIDTH_MISMATCH";
 case 173:
  return "IS_ERROR_DRC_FRAME_END_TIME_OUT";


 case 161:
  return "IS_ERROR_FD_PWRDN_FAIL";
 case 163:
  return "IS_ERROR_FD_MULTIPLE_INPUT";
 case 164:
  return "IS_ERROR_FD_ABSENT_INPUT";
 case 162:
  return "IS_ERROR_FD_NONADJACENT_INPUT";
 case 141:
  return "IS_ERROR_LHFD_FRAME_END_TIME_OUT";
 default:
  return "Unknown";
 }
}
