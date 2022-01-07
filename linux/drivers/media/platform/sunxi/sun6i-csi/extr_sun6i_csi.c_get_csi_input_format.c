
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun6i_csi_dev {int dev; } ;
typedef enum csi_input_fmt { ____Placeholder_csi_input_fmt } csi_input_fmt ;


 int CSI_INPUT_FORMAT_RAW ;
 int CSI_INPUT_FORMAT_YUV422 ;




 int dev_dbg (int ,char*) ;

__attribute__((used)) static enum csi_input_fmt get_csi_input_format(struct sun6i_csi_dev *sdev,
            u32 mbus_code, u32 pixformat)
{

 if ((mbus_code & 0xF000) != 0x2000)
  return CSI_INPUT_FORMAT_RAW;

 switch (pixformat) {
 case 129:
 case 128:
 case 131:
 case 130:
  return CSI_INPUT_FORMAT_RAW;
 default:
  break;
 }


 dev_dbg(sdev->dev, "Select YUV422 as default input format of CSI.\n");
 return CSI_INPUT_FORMAT_YUV422;
}
