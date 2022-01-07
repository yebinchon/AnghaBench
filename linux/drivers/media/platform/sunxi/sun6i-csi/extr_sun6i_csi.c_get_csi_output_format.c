
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sun6i_csi_dev {int dev; } ;
typedef enum csi_output_fmt { ____Placeholder_csi_output_fmt } csi_output_fmt ;


 int CSI_FIELD_MB_YUV420 ;
 int CSI_FIELD_PLANAR_YUV420 ;
 int CSI_FIELD_PLANAR_YUV422 ;
 int CSI_FIELD_RAW_10 ;
 int CSI_FIELD_RAW_12 ;
 int CSI_FIELD_RAW_8 ;
 int CSI_FIELD_RGB565 ;
 int CSI_FIELD_UV_CB_YUV420 ;
 int CSI_FIELD_UV_CB_YUV422 ;
 int CSI_FRAME_MB_YUV420 ;
 int CSI_FRAME_PLANAR_YUV420 ;
 int CSI_FRAME_PLANAR_YUV422 ;
 int CSI_FRAME_RAW_10 ;
 int CSI_FRAME_RAW_12 ;
 int CSI_FRAME_RAW_8 ;
 int CSI_FRAME_RGB565 ;
 int CSI_FRAME_UV_CB_YUV420 ;
 int CSI_FRAME_UV_CB_YUV422 ;
 scalar_t__ V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_FIELD_INTERLACED_BT ;
 scalar_t__ V4L2_FIELD_INTERLACED_TB ;
 int dev_warn (int ,char*,scalar_t__) ;

__attribute__((used)) static enum csi_output_fmt get_csi_output_format(struct sun6i_csi_dev *sdev,
       u32 pixformat, u32 field)
{
 bool buf_interlaced = 0;

 if (field == V4L2_FIELD_INTERLACED
     || field == V4L2_FIELD_INTERLACED_TB
     || field == V4L2_FIELD_INTERLACED_BT)
  buf_interlaced = 1;

 switch (pixformat) {
 case 144:
 case 141:
 case 138:
 case 135:
  return buf_interlaced ? CSI_FRAME_RAW_8 : CSI_FIELD_RAW_8;
 case 146:
 case 143:
 case 140:
 case 137:
  return buf_interlaced ? CSI_FRAME_RAW_10 : CSI_FIELD_RAW_10;
 case 145:
 case 142:
 case 139:
 case 136:
  return buf_interlaced ? CSI_FRAME_RAW_12 : CSI_FIELD_RAW_12;

 case 130:
 case 128:
 case 134:
 case 133:
  return buf_interlaced ? CSI_FRAME_RAW_8 : CSI_FIELD_RAW_8;

 case 154:
  return buf_interlaced ? CSI_FRAME_MB_YUV420 :
     CSI_FIELD_MB_YUV420;
 case 152:
 case 150:
  return buf_interlaced ? CSI_FRAME_UV_CB_YUV420 :
     CSI_FIELD_UV_CB_YUV420;
 case 132:
 case 129:
  return buf_interlaced ? CSI_FRAME_PLANAR_YUV420 :
     CSI_FIELD_PLANAR_YUV420;
 case 151:
 case 149:
  return buf_interlaced ? CSI_FRAME_UV_CB_YUV422 :
     CSI_FIELD_UV_CB_YUV422;
 case 131:
  return buf_interlaced ? CSI_FRAME_PLANAR_YUV422 :
     CSI_FIELD_PLANAR_YUV422;

 case 148:
 case 147:
  return buf_interlaced ? CSI_FRAME_RGB565 : CSI_FIELD_RGB565;

 case 153:
  return buf_interlaced ? CSI_FRAME_RAW_8 : CSI_FIELD_RAW_8;

 default:
  dev_warn(sdev->dev, "Unsupported pixformat: 0x%x\n", pixformat);
  break;
 }

 return CSI_FIELD_RAW_8;
}
