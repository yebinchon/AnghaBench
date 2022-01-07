
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {unsigned int width; } ;
struct gspca_dev {int usb_err; TYPE_1__ pixfmt; } ;
typedef int s32 ;


 int D_STREAM ;
 int EINVAL ;
 int REG_COARSE_INTEGRATION_TIME_ ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int gspca_err (struct gspca_dev*,char*,unsigned int) ;
 int reg_w (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev, s32 val)
{
 u16 value;
 unsigned int w = gspca_dev->pixfmt.width;

 if (w == 800)
  value = val * 5;
 else if (w == 1600)
  value = val * 3;
 else if (w == 3264)
  value = val * 3 / 2;
 else {
  gspca_err(gspca_dev, "Invalid width %u\n", w);
  gspca_dev->usb_err = -EINVAL;
  return;
 }
 gspca_dbg(gspca_dev, D_STREAM, "exposure: 0x%04X ms\n\n", value);


 reg_w(gspca_dev, value, REG_COARSE_INTEGRATION_TIME_);
 reg_w(gspca_dev, value, REG_COARSE_INTEGRATION_TIME_);
}
