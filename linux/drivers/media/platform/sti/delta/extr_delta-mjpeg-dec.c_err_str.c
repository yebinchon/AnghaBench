
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum jpeg_decoding_error_t { ____Placeholder_jpeg_decoding_error_t } jpeg_decoding_error_t ;
__attribute__((used)) static inline const char *err_str(enum jpeg_decoding_error_t err)
{
 switch (err) {
 case 135:
  return "JPEG_DECODER_NO_ERROR";
 case 132:
  return "JPEG_DECODER_UNDEFINED_HUFF_TABLE";
 case 130:
  return "JPEG_DECODER_UNSUPPORTED_MARKER";
 case 133:
  return "JPEG_DECODER_UNABLE_ALLOCATE_MEMORY";
 case 137:
  return "JPEG_DECODER_NON_SUPPORTED_SAMP_FACTORS";
 case 149:
  return "JPEG_DECODER_BAD_PARAMETER";
 case 142:
  return "JPEG_DECODER_DECODE_ERROR";
 case 147:
  return "JPEG_DECODER_BAD_RESTART_MARKER";
 case 131:
  return "JPEG_DECODER_UNSUPPORTED_COLORSPACE";
 case 146:
  return "JPEG_DECODER_BAD_SOS_SPECTRAL";
 case 145:
  return "JPEG_DECODER_BAD_SOS_SUCCESSIVE";
 case 154:
  return "JPEG_DECODER_BAD_HEADER_LENGTH";
 case 156:
  return "JPEG_DECODER_BAD_COUNT_VALUE";
 case 155:
  return "JPEG_DECODER_BAD_DHT_MARKER";
 case 152:
  return "JPEG_DECODER_BAD_INDEX_VALUE";
 case 151:
  return "JPEG_DECODER_BAD_NUMBER_HUFFMAN_TABLES";
 case 148:
  return "JPEG_DECODER_BAD_QUANT_TABLE_LENGTH";
 case 150:
  return "JPEG_DECODER_BAD_NUMBER_QUANT_TABLES";
 case 157:
  return "JPEG_DECODER_BAD_COMPONENT_COUNT";
 case 141:
  return "JPEG_DECODER_DIVIDE_BY_ZERO_ERROR";
 case 136:
  return "JPEG_DECODER_NOT_JPG_IMAGE";
 case 129:
  return "JPEG_DECODER_UNSUPPORTED_ROTATION_ANGLE";
 case 128:
  return "JPEG_DECODER_UNSUPPORTED_SCALING";
 case 138:
  return "JPEG_DECODER_INSUFFICIENT_OUTPUTBUFFER_SIZE";
 case 153:
  return "JPEG_DECODER_BAD_HWCFG_GP_VERSION_VALUE";
 case 143:
  return "JPEG_DECODER_BAD_VALUE_FROM_RED";
 case 144:
  return "JPEG_DECODER_BAD_SUBREGION_PARAMETERS";
 case 134:
  return "JPEG_DECODER_PROGRESSIVE_DECODE_NOT_SUPPORTED";
 case 139:
  return "JPEG_DECODER_ERROR_TASK_TIMEOUT";
 case 140:
  return "JPEG_DECODER_ERROR_FEATURE_NOT_SUPPORTED";
 default:
  return "!unknown MJPEG error!";
 }
}
