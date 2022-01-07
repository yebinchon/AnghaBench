
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *cmd_to_str(int cmd)
{
 switch (cmd) {
 case 157:
  return "PING_FW";
 case 129:
  return "START_CAPTURE";
 case 128:
  return "STOP_CAPTURE";
 case 153:
  return "SET_AUDIO_ID";
 case 130:
  return "SET_VIDEO_ID";
 case 137:
  return "SET_PCR_PID";
 case 143:
  return "SET_FRAME_RATE";
 case 142:
  return "SET_FRAME_SIZE";
 case 151:
  return "SET_BIT_RATE";
 case 140:
  return "SET_GOP_PROPERTIES";
 case 154:
  return "SET_ASPECT_RATIO";
 case 147:
  return "SET_DNR_FILTER_PROPS";
 case 146:
  return "SET_DNR_FILTER_PROPS";
 case 149:
  return "SET_CORING_LEVELS";
 case 134:
  return "SET_SPATIAL_FILTER_TYPE";
 case 131:
  return "SET_VBI_LINE";
 case 133:
  return "SET_STREAM_TYPE";
 case 138:
  return "SET_OUTPUT_PORT";
 case 152:
  return "SET_AUDIO_PROPERTIES";
 case 163:
  return "HALT_FW";
 case 164:
  return "GET_VERSION";
 case 141:
  return "SET_GOP_CLOSURE";
 case 165:
  return "GET_SEQ_END";
 case 136:
  return "SET_PGM_INDEX_INFO";
 case 132:
  return "SET_VBI_CONFIG";
 case 148:
  return "SET_DMA_BLOCK_SIZE";
 case 167:
  return "GET_PREV_DMA_INFO_MB_10";
 case 166:
  return "GET_PREV_DMA_INFO_MB_9";
 case 155:
  return "SCHED_DMA_TO_HOST";
 case 162:
  return "INITIALIZE_INPUT";
 case 144:
  return "SET_FRAME_DROP_RATE";
 case 158:
  return "PAUSE_ENCODER";
 case 156:
  return "REFRESH_INPUT";
 case 150:
  return "SET_COPYRIGHT";
 case 145:
  return "SET_EVENT_NOTIFICATION";
 case 139:
  return "SET_NUM_VSYNC_LINES";
 case 135:
  return "SET_PLACEHOLDER";
 case 159:
  return "MUTE_VIDEO";
 case 160:
  return "MUTE_AUDIO";
 case 161:
  return "MISC";
 default:
  return "UNKNOWN";
 }
}
