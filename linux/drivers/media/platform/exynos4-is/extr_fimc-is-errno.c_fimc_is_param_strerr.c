
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *fimc_is_param_strerr(unsigned int error)
{
 switch (error) {
 case 185:
  return "ERROR_COMMON_CMD: Invalid Command";
 case 180:
  return "ERROR_COMMON_PARAMETER: Invalid Parameter";
 case 177:
  return "ERROR_COMMON_SETFILE_LOAD: Illegal Setfile Loading";
 case 179:
  return "ERROR_COMMON_SETFILE_ADJUST: Setfile isn't adjusted";
 case 178:
  return "ERROR_COMMON_SETFILE_INDEX: Invalid setfile index";
 case 183:
  return "ERROR_COMMON_INPUT_PATH: Input path can be changed in ready state";
 case 184:
  return "ERROR_COMMON_INPUT_INIT: IP can not start if input path is not set";
 case 181:
  return "ERROR_COMMON_OUTPUT_PATH: Output path can be changed in ready state (stop)";
 case 182:
  return "ERROR_COMMON_OUTPUT_INIT: IP can not start if output path is not set";
 case 176:
  return "ERROR_CONTROL_BYPASS";
 case 144:
  return "ERROR_OTF_INPUT_FORMAT: Invalid format  (DRC: YUV444, FD: YUV444, 422, 420)";
 case 142:
  return "ERROR_OTF_INPUT_WIDTH: Invalid width (DRC: 128~8192, FD: 32~8190)";
 case 143:
  return "ERROR_OTF_INPUT_HEIGHT: Invalid bit-width (DRC: 8~12bits, FD: 8bit)";
 case 145:
  return "ERROR_OTF_INPUT_BIT_WIDTH: Invalid bit-width (DRC: 8~12bits, FD: 8bit)";
 case 170:
  return "ERROR_DMA_INPUT_WIDTH: Invalid width (DRC: 128~8192, FD: 32~8190)";
 case 173:
  return "ERROR_DMA_INPUT_HEIGHT: Invalid height (DRC: 64~8192, FD: 16~8190)";
 case 174:
  return "ERROR_DMA_INPUT_FORMAT: Invalid format (DRC: YUV444 or YUV422, FD: YUV444,422,420)";
 case 175:
  return "ERROR_DMA_INPUT_BIT_WIDTH: Invalid bit-width (DRC: 8~12bits, FD: 8bit)";
 case 172:
  return "ERROR_DMA_INPUT_ORDER: Invalid order(DRC: YYCbCr,YCbYCr,FD:NO,YYCbCr,YCbYCr,CbCr,CrCb)";
 case 171:
  return "ERROR_DMA_INPUT_PLANE: Invalid palne (DRC: 3, FD: 1, 2, 3)";
 case 138:
  return "ERROR_OTF_OUTPUT_WIDTH: Invalid width (DRC: 128~8192)";
 case 139:
  return "ERROR_OTF_OUTPUT_HEIGHT: Invalid height (DRC: 64~8192)";
 case 140:
  return "ERROR_OTF_OUTPUT_FORMAT: Invalid format (DRC: YUV444)";
 case 141:
  return "ERROR_OTF_OUTPUT_BIT_WIDTH: Invalid bit-width (DRC: 8~12bits, FD: 8bit)";
 case 164:
  return "ERROR_DMA_OUTPUT_WIDTH";
 case 167:
  return "ERROR_DMA_OUTPUT_HEIGHT";
 case 168:
  return "ERROR_DMA_OUTPUT_FORMAT";
 case 169:
  return "ERROR_DMA_OUTPUT_BIT_WIDTH";
 case 165:
  return "ERROR_DMA_OUTPUT_PLANE";
 case 166:
  return "ERROR_DMA_OUTPUT_ORDER";


 case 136:
  return "ERROR_SENSOR_I2C_FAIL";
 case 133:
  return "ERROR_SENSOR_INVALID_FRAMERATE";
 case 134:
  return "ERROR_SENSOR_INVALID_EXPOSURETIME";
 case 131:
  return "ERROR_SENSOR_INVALID_SIZE";
 case 132:
  return "ERROR_SENSOR_INVALID_SETTING";
 case 137:
  return "ERROR_SENSOR_ACTUATOR_INIT_FAIL";
 case 135:
  return "ERROR_SENSOR_INVALID_AF_POS";
 case 129:
  return "ERROR_SENSOR_UNSUPPORT_FUNC";
 case 128:
  return "ERROR_SENSOR_UNSUPPORT_PERI";
 case 130:
  return "ERROR_SENSOR_UNSUPPORT_AF";


 case 148:
  return "ERROR_ISP_AF_BUSY";
 case 147:
  return "ERROR_ISP_AF_INVALID_COMMAND";
 case 146:
  return "ERROR_ISP_AF_INVALID_MODE";



 case 160:
  return "ERROR_FD_CONFIG_MAX_NUMBER_STATE";
 case 161:
  return "ERROR_FD_CONFIG_MAX_NUMBER_INVALID";
 case 151:
  return "ERROR_FD_CONFIG_YAW_ANGLE_STATE";
 case 152:
  return "ERROR_FD_CONFIG_YAW_ANGLE_INVALID\n";
 case 154:
  return "ERROR_FD_CONFIG_ROLL_ANGLE_STATE";
 case 155:
  return "ERROR_FD_CONFIG_ROLL_ANGLE_INVALID";
 case 153:
  return "ERROR_FD_CONFIG_SMILE_MODE_INVALID";
 case 163:
  return "ERROR_FD_CONFIG_BLINK_MODE_INVALID";
 case 162:
  return "ERROR_FD_CONFIG_EYES_DETECT_INVALID";
 case 159:
  return "ERROR_FD_CONFIG_MOUTH_DETECT_INVALID";
 case 157:
  return "ERROR_FD_CONFIG_ORIENTATION_STATE";
 case 158:
  return "ERROR_FD_CONFIG_ORIENTATION_INVALID";
 case 156:
  return "ERROR_FD_CONFIG_ORIENTATION_VALUE_INVALID";
 case 149:
  return "ERROR_FD_RESULT";
 case 150:
  return "ERROR_FD_MODE";
 default:
  return "Unknown";
 }
}
