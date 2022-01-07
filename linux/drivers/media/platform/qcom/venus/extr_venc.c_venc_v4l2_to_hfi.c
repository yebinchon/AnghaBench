
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HFI_H264_DB_MODE_ALL_BOUNDARY ;
 int HFI_H264_DB_MODE_DISABLE ;
 int HFI_H264_DB_MODE_SKIP_SLICE_BOUNDARY ;
 int HFI_H264_ENTROPY_CABAC ;
 int HFI_H264_ENTROPY_CAVLC ;
 int HFI_H264_LEVEL_1 ;
 int HFI_H264_LEVEL_11 ;
 int HFI_H264_LEVEL_12 ;
 int HFI_H264_LEVEL_13 ;
 int HFI_H264_LEVEL_1b ;
 int HFI_H264_LEVEL_2 ;
 int HFI_H264_LEVEL_21 ;
 int HFI_H264_LEVEL_22 ;
 int HFI_H264_LEVEL_3 ;
 int HFI_H264_LEVEL_31 ;
 int HFI_H264_LEVEL_32 ;
 int HFI_H264_LEVEL_4 ;
 int HFI_H264_LEVEL_41 ;
 int HFI_H264_LEVEL_42 ;
 int HFI_H264_LEVEL_5 ;
 int HFI_H264_LEVEL_51 ;
 int HFI_H264_PROFILE_BASELINE ;
 int HFI_H264_PROFILE_CONSTRAINED_BASE ;
 int HFI_H264_PROFILE_HIGH ;
 int HFI_H264_PROFILE_MAIN ;
 int HFI_HEVC_LEVEL_1 ;
 int HFI_HEVC_LEVEL_2 ;
 int HFI_HEVC_LEVEL_21 ;
 int HFI_HEVC_LEVEL_3 ;
 int HFI_HEVC_LEVEL_31 ;
 int HFI_HEVC_LEVEL_4 ;
 int HFI_HEVC_LEVEL_41 ;
 int HFI_HEVC_LEVEL_5 ;
 int HFI_HEVC_LEVEL_51 ;
 int HFI_HEVC_LEVEL_52 ;
 int HFI_HEVC_LEVEL_6 ;
 int HFI_HEVC_LEVEL_61 ;
 int HFI_HEVC_LEVEL_62 ;
 int HFI_HEVC_PROFILE_MAIN ;
 int HFI_HEVC_PROFILE_MAIN10 ;
 int HFI_HEVC_PROFILE_MAIN_STILL_PIC ;
 int HFI_MPEG4_LEVEL_0 ;
 int HFI_MPEG4_LEVEL_0b ;
 int HFI_MPEG4_LEVEL_1 ;
 int HFI_MPEG4_LEVEL_2 ;
 int HFI_MPEG4_LEVEL_3 ;
 int HFI_MPEG4_LEVEL_4 ;
 int HFI_MPEG4_LEVEL_5 ;
 int HFI_MPEG4_PROFILE_ADVANCEDSIMPLE ;
 int HFI_MPEG4_PROFILE_SIMPLE ;
 int HFI_VPX_PROFILE_VERSION_0 ;
 int HFI_VPX_PROFILE_VERSION_1 ;
 int HFI_VPX_PROFILE_VERSION_2 ;
 int HFI_VPX_PROFILE_VERSION_3 ;
__attribute__((used)) static int venc_v4l2_to_hfi(int id, int value)
{
 switch (id) {
 case 180:
  switch (value) {
  case 136:
  default:
   return HFI_MPEG4_LEVEL_0;
  case 135:
   return HFI_MPEG4_LEVEL_0b;
  case 134:
   return HFI_MPEG4_LEVEL_1;
  case 133:
   return HFI_MPEG4_LEVEL_2;
  case 132:
   return HFI_MPEG4_LEVEL_3;
  case 131:
   return HFI_MPEG4_LEVEL_4;
  case 130:
   return HFI_MPEG4_LEVEL_5;
  }
 case 179:
  switch (value) {
  case 128:
  default:
   return HFI_MPEG4_PROFILE_SIMPLE;
  case 129:
   return HFI_MPEG4_PROFILE_ADVANCEDSIMPLE;
  }
 case 183:
  switch (value) {
  case 156:
   return HFI_H264_PROFILE_BASELINE;
  case 155:
   return HFI_H264_PROFILE_CONSTRAINED_BASE;
  case 153:
   return HFI_H264_PROFILE_MAIN;
  case 154:
  default:
   return HFI_H264_PROFILE_HIGH;
  }
 case 185:
  switch (value) {
  case 174:
   return HFI_H264_LEVEL_1;
  case 175:
   return HFI_H264_LEVEL_1b;
  case 173:
   return HFI_H264_LEVEL_11;
  case 172:
   return HFI_H264_LEVEL_12;
  case 171:
   return HFI_H264_LEVEL_13;
  case 170:
   return HFI_H264_LEVEL_2;
  case 169:
   return HFI_H264_LEVEL_21;
  case 168:
   return HFI_H264_LEVEL_22;
  case 167:
   return HFI_H264_LEVEL_3;
  case 166:
   return HFI_H264_LEVEL_31;
  case 165:
   return HFI_H264_LEVEL_32;
  case 164:
   return HFI_H264_LEVEL_4;
  case 163:
   return HFI_H264_LEVEL_41;
  case 162:
   return HFI_H264_LEVEL_42;
  case 161:
  default:
   return HFI_H264_LEVEL_5;
  case 160:
   return HFI_H264_LEVEL_51;
  }
 case 186:
  switch (value) {
  case 176:
  default:
   return HFI_H264_ENTROPY_CAVLC;
  case 177:
   return HFI_H264_ENTROPY_CABAC;
  }
 case 178:
  switch (value) {
  case 0:
  default:
   return HFI_VPX_PROFILE_VERSION_0;
  case 1:
   return HFI_VPX_PROFILE_VERSION_1;
  case 2:
   return HFI_VPX_PROFILE_VERSION_2;
  case 3:
   return HFI_VPX_PROFILE_VERSION_3;
  }
 case 184:
  switch (value) {
  case 157:
  default:
   return HFI_H264_DB_MODE_ALL_BOUNDARY;
  case 159:
   return HFI_H264_DB_MODE_DISABLE;
  case 158:
   return HFI_H264_DB_MODE_SKIP_SLICE_BOUNDARY;
  }
 case 181:
  switch (value) {
  case 139:
  default:
   return HFI_HEVC_PROFILE_MAIN;
  case 137:
   return HFI_HEVC_PROFILE_MAIN_STILL_PIC;
  case 138:
   return HFI_HEVC_PROFILE_MAIN10;
  }
 case 182:
  switch (value) {
  case 152:
  default:
   return HFI_HEVC_LEVEL_1;
  case 151:
   return HFI_HEVC_LEVEL_2;
  case 150:
   return HFI_HEVC_LEVEL_21;
  case 149:
   return HFI_HEVC_LEVEL_3;
  case 148:
   return HFI_HEVC_LEVEL_31;
  case 147:
   return HFI_HEVC_LEVEL_4;
  case 146:
   return HFI_HEVC_LEVEL_41;
  case 145:
   return HFI_HEVC_LEVEL_5;
  case 144:
   return HFI_HEVC_LEVEL_51;
  case 143:
   return HFI_HEVC_LEVEL_52;
  case 142:
   return HFI_HEVC_LEVEL_6;
  case 141:
   return HFI_HEVC_LEVEL_61;
  case 140:
   return HFI_HEVC_LEVEL_62;
  }
 }

 return 0;
}
