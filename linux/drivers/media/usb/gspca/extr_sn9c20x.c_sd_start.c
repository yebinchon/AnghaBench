
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sd {int fmt; scalar_t__ nchg; scalar_t__ npkt; scalar_t__ pktsz; scalar_t__ vflip; scalar_t__ hflip; scalar_t__ exposure; scalar_t__ gain; scalar_t__ red; scalar_t__ blue; scalar_t__ gamma; scalar_t__ hue; scalar_t__ saturation; scalar_t__ contrast; scalar_t__ brightness; int vstart; int hstart; int * jpeg_hdr; scalar_t__ jpegqual; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {int usb_err; TYPE_3__ pixfmt; scalar_t__ curr_mode; TYPE_2__ cam; } ;
struct TYPE_4__ {int priv; } ;


 int * CLR_WIN (int,int) ;
 int * HW_WIN (int,int ,int ) ;
 size_t JPEG_QT0_OFFSET ;
 size_t JPEG_QT1_OFFSET ;
 int MODE_JPEG ;
 int MODE_RAW ;




 int SCALE_MASK ;
 int configure_sensor_output (struct gspca_dev*,int) ;
 int jpeg_define (int *,int,int,int) ;
 int jpeg_set_qual (int *,int ) ;
 int pr_info (char*) ;
 int reg_w (struct gspca_dev*,int,int *,int) ;
 int reg_w1 (struct gspca_dev*,int,int) ;
 int set_cmatrix (struct gspca_dev*,int ,int ,int ,int ) ;
 int set_exposure (struct gspca_dev*,int ) ;
 int set_gain (struct gspca_dev*,int ) ;
 int set_gamma (struct gspca_dev*,int ) ;
 int set_hvflip (struct gspca_dev*,int ,int ) ;
 int set_redblue (struct gspca_dev*,int ,int ) ;
 int v4l2_ctrl_g_ctrl (scalar_t__) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;
 int width = gspca_dev->pixfmt.width;
 int height = gspca_dev->pixfmt.height;
 u8 fmt, scale = 0;

 jpeg_define(sd->jpeg_hdr, height, width,
   0x21);
 jpeg_set_qual(sd->jpeg_hdr, v4l2_ctrl_g_ctrl(sd->jpegqual));

 if (mode & MODE_RAW)
  fmt = 0x2d;
 else if (mode & MODE_JPEG)
  fmt = 0x24;
 else
  fmt = 0x2f;
 sd->fmt = fmt;

 switch (mode & SCALE_MASK) {
 case 131:
  scale = 0xc0;
  pr_info("Set 1280x1024\n");
  break;
 case 128:
  scale = 0x80;
  pr_info("Set 640x480\n");
  break;
 case 129:
  scale = 0x90;
  pr_info("Set 320x240\n");
  break;
 case 130:
  scale = 0xa0;
  pr_info("Set 160x120\n");
  break;
 }

 configure_sensor_output(gspca_dev, mode);
 reg_w(gspca_dev, 0x1100, &sd->jpeg_hdr[JPEG_QT0_OFFSET], 64);
 reg_w(gspca_dev, 0x1140, &sd->jpeg_hdr[JPEG_QT1_OFFSET], 64);
 reg_w(gspca_dev, 0x10fb, CLR_WIN(width, height), 5);
 reg_w(gspca_dev, 0x1180, HW_WIN(mode, sd->hstart, sd->vstart), 6);
 reg_w1(gspca_dev, 0x1189, scale);
 reg_w1(gspca_dev, 0x10e0, fmt);

 set_cmatrix(gspca_dev, v4l2_ctrl_g_ctrl(sd->brightness),
   v4l2_ctrl_g_ctrl(sd->contrast),
   v4l2_ctrl_g_ctrl(sd->saturation),
   v4l2_ctrl_g_ctrl(sd->hue));
 set_gamma(gspca_dev, v4l2_ctrl_g_ctrl(sd->gamma));
 set_redblue(gspca_dev, v4l2_ctrl_g_ctrl(sd->blue),
   v4l2_ctrl_g_ctrl(sd->red));
 if (sd->gain)
  set_gain(gspca_dev, v4l2_ctrl_g_ctrl(sd->gain));
 if (sd->exposure)
  set_exposure(gspca_dev, v4l2_ctrl_g_ctrl(sd->exposure));
 if (sd->hflip)
  set_hvflip(gspca_dev, v4l2_ctrl_g_ctrl(sd->hflip),
    v4l2_ctrl_g_ctrl(sd->vflip));

 reg_w1(gspca_dev, 0x1007, 0x20);
 reg_w1(gspca_dev, 0x1061, 0x03);


 if (mode & MODE_JPEG) {
  sd->pktsz = sd->npkt = 0;
  sd->nchg = 0;
 }

 return gspca_dev->usb_err;
}
