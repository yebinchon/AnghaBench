
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {scalar_t__ usb_err; } ;
typedef int s32 ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_err (struct gspca_dev*,char*) ;
 int reg_rw (struct gspca_dev*,int const,int const,int,int,int ) ;

__attribute__((used)) static void dtcs033_setexposure(struct gspca_dev *gspca_dev,
   s32 expo, s32 gain)
{

 u16 sGain = (u16)gain;
 u16 gainVal = 224+(sGain-14)*(768-224)/(33-14);
 u16 wIndex = 0x0100|(0x00FF&gainVal);
 u16 wValue = (0xFF00&gainVal)>>8;


 u16 sXTime = (u16)expo;
 u16 xtimeVal = (524*(150-(sXTime-1)))/150;

 const u8 bRequestType =
  USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
 const u8 bRequest = 0x18;

 reg_rw(gspca_dev,
  bRequestType, bRequest, wValue, wIndex, 0);
 if (gspca_dev->usb_err < 0)
  gspca_err(gspca_dev, "usb error in setexposure(gain) sequence\n");

 reg_rw(gspca_dev,
  bRequestType, bRequest, (xtimeVal<<4), 0x6300, 0);
 if (gspca_dev->usb_err < 0)
  gspca_err(gspca_dev, "usb error in setexposure(time) sequence\n");
}
