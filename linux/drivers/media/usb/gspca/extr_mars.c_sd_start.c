
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {int illum_bottom; int illum_top; int sharpness; int brightness; int saturation; int gamma; int jpeg_hdr; } ;
struct TYPE_2__ {int height; int width; } ;
struct gspca_dev {int* usb_buf; int usb_err; TYPE_1__ pixfmt; } ;


 int QUALITY ;
 int jpeg_define (int ,int,int,int) ;
 int jpeg_set_qual (int ,int ) ;
 int * mi_data ;
 int mi_w (struct gspca_dev*,int,int ) ;
 int reg_w (struct gspca_dev*,int) ;
 int setilluminators (struct gspca_dev*,int,int) ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 *data;
 int i;


 jpeg_define(sd->jpeg_hdr, gspca_dev->pixfmt.height,
   gspca_dev->pixfmt.width,
   0x21);
 jpeg_set_qual(sd->jpeg_hdr, QUALITY);

 data = gspca_dev->usb_buf;

 data[0] = 0x01;
 data[1] = 0x01;
 reg_w(gspca_dev, 2);




 data[0] = 0x00;
 data[1] = 0x0c | 0x01;
 data[2] = 0x01;
 data[3] = gspca_dev->pixfmt.width / 8;
 data[4] = gspca_dev->pixfmt.height / 8;
 data[5] = 0x30;

 data[6] = 0x02;
 data[7] = v4l2_ctrl_g_ctrl(sd->gamma) * 0x40;
 data[8] = 0x01;



 data[9] = 0x52;

 data[10] = 0x18;

 reg_w(gspca_dev, 11);

 data[0] = 0x23;
 data[1] = 0x09;

 reg_w(gspca_dev, 2);

 data[0] = 0x3c;




 data[1] = 50;

 reg_w(gspca_dev, 2);


 data[0] = 0x5e;
 data[1] = 0;




 data[2] = v4l2_ctrl_g_ctrl(sd->saturation) << 3;
 data[3] = ((v4l2_ctrl_g_ctrl(sd->saturation) >> 2) & 0xf8) | 0x04;
 data[4] = v4l2_ctrl_g_ctrl(sd->brightness);
 data[5] = 0x00;

 reg_w(gspca_dev, 6);

 data[0] = 0x67;

 data[1] = v4l2_ctrl_g_ctrl(sd->sharpness) * 4 + 3;
 data[2] = 0x14;
 reg_w(gspca_dev, 3);

 data[0] = 0x69;
 data[1] = 0x2f;
 data[2] = 0x28;
 data[3] = 0x42;
 reg_w(gspca_dev, 4);

 data[0] = 0x63;
 data[1] = 0x07;
 reg_w(gspca_dev, 2);



 for (i = 0; i < sizeof mi_data; i++)
  mi_w(gspca_dev, i + 1, mi_data[i]);

 data[0] = 0x00;
 data[1] = 0x4d;
 reg_w(gspca_dev, 2);

 setilluminators(gspca_dev, v4l2_ctrl_g_ctrl(sd->illum_top),
       v4l2_ctrl_g_ctrl(sd->illum_bottom));

 return gspca_dev->usb_err;
}
