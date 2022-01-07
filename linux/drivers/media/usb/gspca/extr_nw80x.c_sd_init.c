
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int bridge; int webcam; } ;
struct gspca_dev {int usb_err; } ;







 int nw800_init ;
 int proscope_init ;
 int reg_w_buf (struct gspca_dev*,int ) ;
 int spacecam_init ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->bridge) {
 case 132:
  switch (sd->webcam) {
  case 128:
   reg_w_buf(gspca_dev, spacecam_init);
   break;
  default:
   reg_w_buf(gspca_dev, nw800_init);
   break;
  }
  break;
 default:
  switch (sd->webcam) {
  case 131:
  case 130:
  case 129:
   reg_w_buf(gspca_dev, proscope_init);
   break;
  }
  break;
 }
 return gspca_dev->usb_err;
}
