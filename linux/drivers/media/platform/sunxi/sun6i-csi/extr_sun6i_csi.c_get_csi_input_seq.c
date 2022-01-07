
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun6i_csi_dev {int dev; } ;
typedef enum csi_input_seq { ____Placeholder_csi_input_seq } csi_input_seq ;


 int CSI_INPUT_SEQ_UYVY ;
 int CSI_INPUT_SEQ_VYUY ;
 int CSI_INPUT_SEQ_YUYV ;
 int CSI_INPUT_SEQ_YVYU ;
 int dev_warn (int ,char*,int) ;

__attribute__((used)) static enum csi_input_seq get_csi_input_seq(struct sun6i_csi_dev *sdev,
         u32 mbus_code, u32 pixformat)
{

 if ((mbus_code & 0xF000) != 0x2000)
  return 0;

 switch (pixformat) {
 case 136:
 case 135:
 case 134:
 case 131:
 case 130:
  switch (mbus_code) {
  case 143:
  case 144:
   return CSI_INPUT_SEQ_UYVY;
  case 141:
  case 142:
   return CSI_INPUT_SEQ_VYUY;
  case 139:
  case 140:
   return CSI_INPUT_SEQ_YUYV;
  case 138:
  case 137:
   return CSI_INPUT_SEQ_YVYU;
  default:
   dev_warn(sdev->dev, "Unsupported mbus code: 0x%x\n",
     mbus_code);
   break;
  }
  break;
 case 133:
 case 132:
 case 128:
  switch (mbus_code) {
  case 143:
  case 144:
   return CSI_INPUT_SEQ_VYUY;
  case 141:
  case 142:
   return CSI_INPUT_SEQ_UYVY;
  case 139:
  case 140:
   return CSI_INPUT_SEQ_YVYU;
  case 138:
  case 137:
   return CSI_INPUT_SEQ_YUYV;
  default:
   dev_warn(sdev->dev, "Unsupported mbus code: 0x%x\n",
     mbus_code);
   break;
  }
  break;

 case 129:
  return CSI_INPUT_SEQ_YUYV;

 default:
  dev_warn(sdev->dev, "Unsupported pixformat: 0x%x, defaulting to YUYV\n",
    pixformat);
  break;
 }

 return CSI_INPUT_SEQ_YUYV;
}
