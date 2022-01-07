
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int jpeg_hdr; } ;
struct TYPE_2__ {int width; int height; } ;
struct gspca_dev {int alt; int usb_err; int iface; int dev; TYPE_1__ pixfmt; } ;


 int D_STREAM ;
 int QUALITY ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int jpeg_define (int ,int ,int,int) ;
 int jpeg_set_qual (int ,int ) ;
 int pr_err (char*,int ,int) ;
 int rcv_val (struct gspca_dev*,int) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int,int ) ;
 int set_par (struct gspca_dev*,int) ;
 int snd_val (struct gspca_dev*,int,int) ;
 int usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret, value;


 jpeg_define(sd->jpeg_hdr, gspca_dev->pixfmt.height,
   gspca_dev->pixfmt.width,
   0x22);
 jpeg_set_qual(sd->jpeg_hdr, QUALITY);


 usb_set_interface(gspca_dev->dev, gspca_dev->iface, 1);

 set_par(gspca_dev, 0x10000000);
 set_par(gspca_dev, 0x00000000);
 set_par(gspca_dev, 0x8002e001);
 set_par(gspca_dev, 0x14000000);
 if (gspca_dev->pixfmt.width > 320)
  value = 0x8002e001;
 else
  value = 0x4001f000;
 set_par(gspca_dev, value);
 ret = usb_set_interface(gspca_dev->dev,
     gspca_dev->iface,
     gspca_dev->alt);
 if (ret < 0) {
  pr_err("set intf %d %d failed\n",
         gspca_dev->iface, gspca_dev->alt);
  gspca_dev->usb_err = ret;
  goto out;
 }
 reg_r(gspca_dev, 0x0630);
 rcv_val(gspca_dev, 0x000020);
 reg_r(gspca_dev, 0x0650);
 snd_val(gspca_dev, 0x000020, 0xffffffff);
 reg_w(gspca_dev, 0x0620, 0);
 reg_w(gspca_dev, 0x0630, 0);
 reg_w(gspca_dev, 0x0640, 0);
 reg_w(gspca_dev, 0x0650, 0);
 reg_w(gspca_dev, 0x0660, 0);
 set_par(gspca_dev, 0x09800000);
 set_par(gspca_dev, 0x0a800000);
 set_par(gspca_dev, 0x0b800000);
 set_par(gspca_dev, 0x0d030000);


 set_par(gspca_dev, 0x01000000);
 set_par(gspca_dev, 0x01000000);
 if (gspca_dev->usb_err >= 0)
  gspca_dbg(gspca_dev, D_STREAM, "camera started alt: 0x%02x\n",
     gspca_dev->alt);
out:
 return gspca_dev->usb_err;
}
