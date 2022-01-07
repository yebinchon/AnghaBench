
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {size_t webcam; scalar_t__ exp_too_low_cnt; scalar_t__ exp_too_high_cnt; } ;
struct TYPE_2__ {int width; } ;
struct gspca_dev {int usb_err; TYPE_1__ pixfmt; } ;





 int const* kr651_start_2 ;
 int const* kr651_start_qvga ;
 int const* kr651_start_vga ;
 int const* nw801_start_2 ;
 int const* nw801_start_qvga ;
 int const* nw801_start_vga ;
 int const* proscope_start_2 ;
 int const* proscope_start_qvga ;
 int const* proscope_start_vga ;
 int reg_w_buf (struct gspca_dev*,int const*) ;
 int ** webcam_start ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 const u8 *cmd;

 cmd = webcam_start[sd->webcam];
 reg_w_buf(gspca_dev, cmd);
 switch (sd->webcam) {
 case 129:
  if (gspca_dev->pixfmt.width == 320)
   reg_w_buf(gspca_dev, nw801_start_qvga);
  else
   reg_w_buf(gspca_dev, nw801_start_vga);
  reg_w_buf(gspca_dev, nw801_start_2);
  break;
 case 130:
  if (gspca_dev->pixfmt.width == 320)
   reg_w_buf(gspca_dev, kr651_start_qvga);
  else
   reg_w_buf(gspca_dev, kr651_start_vga);
  reg_w_buf(gspca_dev, kr651_start_2);
  break;
 case 128:
  if (gspca_dev->pixfmt.width == 320)
   reg_w_buf(gspca_dev, proscope_start_qvga);
  else
   reg_w_buf(gspca_dev, proscope_start_vga);
  reg_w_buf(gspca_dev, proscope_start_2);
  break;
 }

 sd->exp_too_high_cnt = 0;
 sd->exp_too_low_cnt = 0;
 return gspca_dev->usb_err;
}
