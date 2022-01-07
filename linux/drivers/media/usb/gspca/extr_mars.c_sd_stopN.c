
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int illum_bottom; int illum_top; } ;
struct gspca_dev {int* usb_buf; } ;


 int msleep (int) ;
 int reg_w (struct gspca_dev*,int) ;
 int setilluminators (struct gspca_dev*,int,int) ;
 scalar_t__ v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (v4l2_ctrl_g_ctrl(sd->illum_top) ||
     v4l2_ctrl_g_ctrl(sd->illum_bottom)) {
  setilluminators(gspca_dev, 0, 0);
  msleep(20);
 }

 gspca_dev->usb_buf[0] = 1;
 gspca_dev->usb_buf[1] = 0;
 reg_w(gspca_dev, 2);
}
