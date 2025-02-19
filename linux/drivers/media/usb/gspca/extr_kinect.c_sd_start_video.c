
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;


 int FORMAT_UYVY ;
 int FORMAT_Y10B ;
 int FPS_HIGH ;
 int MODE_1280x1024 ;
 int write_register (struct gspca_dev*,int,int) ;

__attribute__((used)) static int sd_start_video(struct gspca_dev *gspca_dev)
{
 int mode;
 uint8_t fmt_reg, fmt_val;
 uint8_t res_reg, res_val;
 uint8_t fps_reg, fps_val;
 uint8_t mode_val;

 mode = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;

 if (mode & FORMAT_Y10B) {
  fmt_reg = 0x19;
  res_reg = 0x1a;
  fps_reg = 0x1b;
  mode_val = 0x03;
 } else {
  fmt_reg = 0x0c;
  res_reg = 0x0d;
  fps_reg = 0x0e;
  mode_val = 0x01;
 }


 if (mode & FORMAT_UYVY)
  fmt_val = 0x05;
 else
  fmt_val = 0x00;

 if (mode & MODE_1280x1024)
  res_val = 0x02;
 else
  res_val = 0x01;

 if (mode & FPS_HIGH)
  fps_val = 0x1e;
 else
  fps_val = 0x0f;



 write_register(gspca_dev, 0x105, 0x00);


 write_register(gspca_dev, 0x05, 0x00);
 if (mode & (FORMAT_Y10B | MODE_1280x1024)) {
  write_register(gspca_dev, 0x13, 0x01);
  write_register(gspca_dev, 0x14, 0x1e);
  write_register(gspca_dev, 0x06, 0x02);
  write_register(gspca_dev, 0x06, 0x00);
 }

 write_register(gspca_dev, fmt_reg, fmt_val);
 write_register(gspca_dev, res_reg, res_val);
 write_register(gspca_dev, fps_reg, fps_val);


 write_register(gspca_dev, 0x05, mode_val);


 write_register(gspca_dev, 0x47, 0x00);

 return 0;
}
