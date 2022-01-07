
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int bus_width; } ;
struct TYPE_6__ {TYPE_1__ parallel; } ;
struct TYPE_7__ {scalar_t__ bus_type; TYPE_2__ bus; } ;
struct TYPE_8__ {TYPE_3__ v4l2_ep; } ;
struct sun6i_csi_dev {int dev; TYPE_4__ csi; } ;
struct sun6i_csi {int dummy; } ;


 int MEDIA_BUS_FMT_JPEG_1X8 ;
 int MEDIA_BUS_FMT_RGB565_2X8_BE ;
 int MEDIA_BUS_FMT_RGB565_2X8_LE ;
 int MEDIA_BUS_FMT_SBGGR10_1X10 ;
 int MEDIA_BUS_FMT_SBGGR12_1X12 ;
 int MEDIA_BUS_FMT_SBGGR8_1X8 ;
 int MEDIA_BUS_FMT_SGBRG10_1X10 ;
 int MEDIA_BUS_FMT_SGBRG12_1X12 ;
 int MEDIA_BUS_FMT_SGBRG8_1X8 ;
 int MEDIA_BUS_FMT_SGRBG10_1X10 ;
 int MEDIA_BUS_FMT_SGRBG12_1X12 ;
 int MEDIA_BUS_FMT_SGRBG8_1X8 ;
 int MEDIA_BUS_FMT_SRGGB10_1X10 ;
 int MEDIA_BUS_FMT_SRGGB12_1X12 ;
 int MEDIA_BUS_FMT_SRGGB8_1X8 ;
 scalar_t__ V4L2_MBUS_BT656 ;
 scalar_t__ V4L2_MBUS_PARALLEL ;
 int dev_dbg (int ,char*,int) ;
 struct sun6i_csi_dev* sun6i_csi_to_dev (struct sun6i_csi*) ;

bool sun6i_csi_is_format_supported(struct sun6i_csi *csi,
       u32 pixformat, u32 mbus_code)
{
 struct sun6i_csi_dev *sdev = sun6i_csi_to_dev(csi);






 if ((sdev->csi.v4l2_ep.bus_type == V4L2_MBUS_PARALLEL
      || sdev->csi.v4l2_ep.bus_type == V4L2_MBUS_BT656)
      && sdev->csi.v4l2_ep.bus.parallel.bus_width == 16) {
  switch (pixformat) {
  case 154:
  case 152:
  case 150:
  case 151:
  case 149:
  case 132:
  case 129:
  case 131:
   switch (mbus_code) {
   case 162:
   case 160:
   case 158:
   case 156:
    return 1;
   default:
    dev_dbg(sdev->dev, "Unsupported mbus code: 0x%x\n",
     mbus_code);
    break;
   }
   break;
  default:
   dev_dbg(sdev->dev, "Unsupported pixformat: 0x%x\n",
    pixformat);
   break;
  }
  return 0;
 }

 switch (pixformat) {
 case 144:
  return (mbus_code == MEDIA_BUS_FMT_SBGGR8_1X8);
 case 141:
  return (mbus_code == MEDIA_BUS_FMT_SGBRG8_1X8);
 case 138:
  return (mbus_code == MEDIA_BUS_FMT_SGRBG8_1X8);
 case 135:
  return (mbus_code == MEDIA_BUS_FMT_SRGGB8_1X8);
 case 146:
  return (mbus_code == MEDIA_BUS_FMT_SBGGR10_1X10);
 case 143:
  return (mbus_code == MEDIA_BUS_FMT_SGBRG10_1X10);
 case 140:
  return (mbus_code == MEDIA_BUS_FMT_SGRBG10_1X10);
 case 137:
  return (mbus_code == MEDIA_BUS_FMT_SRGGB10_1X10);
 case 145:
  return (mbus_code == MEDIA_BUS_FMT_SBGGR12_1X12);
 case 142:
  return (mbus_code == MEDIA_BUS_FMT_SGBRG12_1X12);
 case 139:
  return (mbus_code == MEDIA_BUS_FMT_SGRBG12_1X12);
 case 136:
  return (mbus_code == MEDIA_BUS_FMT_SRGGB12_1X12);

 case 130:
  return (mbus_code == 157);
 case 128:
  return (mbus_code == 155);
 case 134:
  return (mbus_code == 161);
 case 133:
  return (mbus_code == 159);

 case 154:
 case 152:
 case 150:
 case 151:
 case 149:
 case 132:
 case 129:
 case 131:
  switch (mbus_code) {
  case 161:
  case 159:
  case 157:
  case 155:
   return 1;
  default:
   dev_dbg(sdev->dev, "Unsupported mbus code: 0x%x\n",
    mbus_code);
   break;
  }
  break;

 case 148:
  return (mbus_code == MEDIA_BUS_FMT_RGB565_2X8_LE);
 case 147:
  return (mbus_code == MEDIA_BUS_FMT_RGB565_2X8_BE);

 case 153:
  return (mbus_code == MEDIA_BUS_FMT_JPEG_1X8);

 default:
  dev_dbg(sdev->dev, "Unsupported pixformat: 0x%x\n", pixformat);
  break;
 }

 return 0;
}
