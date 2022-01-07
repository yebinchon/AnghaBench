
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int idVendor; int idProduct; } ;
struct sd {int webcam; int ag_cnt; scalar_t__ bridge; } ;
struct TYPE_2__ {int needs_full_bandwidth; int nmodes; int * cam_mode; } ;
struct gspca_dev {int* usb_buf; int usb_err; TYPE_1__ cam; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ BRIDGE_NW800 ;
 scalar_t__ BRIDGE_NW801 ;
 scalar_t__ BRIDGE_NW802 ;

 int D_PROBE ;
 int ENODEV ;
 int Generic800 ;
 int Generic802 ;

 unsigned int NWEBCAMS ;


 int SpaceCam ;
 int SpaceCam2 ;
 int Twinkle ;
 int * cif_mode ;
 int gspca_dbg (struct gspca_dev*,int ,char*,scalar_t__,...) ;
 int nw802_test_reg (struct gspca_dev*,int,int) ;
 int pr_err (char*,size_t,scalar_t__) ;
 int reg_r (struct gspca_dev*,int,int) ;
 int * vga_mode ;
 int webcam ;
 scalar_t__* webcam_chip ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if ((unsigned) webcam >= NWEBCAMS)
  webcam = 0;
 sd->webcam = webcam;
 gspca_dev->cam.needs_full_bandwidth = 1;
 sd->ag_cnt = -1;
 if (!nw802_test_reg(gspca_dev, 0x0500, 0x55)) {
  sd->bridge = BRIDGE_NW802;
  if (sd->webcam == Generic800)
   sd->webcam = Generic802;
 } else if (!nw802_test_reg(gspca_dev, 0x109b, 0xaa)) {
  sd->bridge = BRIDGE_NW801;
  if (sd->webcam == Generic800)
   sd->webcam = 129;
 } else if (id->idVendor == 0x06a5 && id->idProduct == 0xd800) {
  reg_r(gspca_dev, 0x0403, 1);
  gspca_dbg(gspca_dev, D_PROBE, "et31x110 sensor type %02x\n",
     gspca_dev->usb_buf[0]);
  switch (gspca_dev->usb_buf[0] >> 1) {
  case 0x00:
   if (sd->webcam == Generic800)
    sd->webcam = SpaceCam;
   break;
  case 0x01:
   if (sd->webcam == Generic800)
    sd->webcam = Twinkle;
   break;
  case 0x0a:
   if (sd->webcam == Generic800)
    sd->webcam = SpaceCam2;
   break;
  }
 }
 if (webcam_chip[sd->webcam] != sd->bridge) {
  pr_err("Bad webcam type %d for NW80%d\n",
         sd->webcam, sd->bridge);
  gspca_dev->usb_err = -ENODEV;
  return gspca_dev->usb_err;
 }
 gspca_dbg(gspca_dev, D_PROBE, "Bridge nw80%d - type: %d\n",
    sd->bridge, sd->webcam);

 if (sd->bridge == BRIDGE_NW800) {
  switch (sd->webcam) {
  case 131:
   gspca_dev->cam.cam_mode = cif_mode;
   break;
  default:
   gspca_dev->cam.cam_mode = &cif_mode[1];
   break;
  }
  gspca_dev->cam.nmodes = 1;
 } else {
  gspca_dev->cam.cam_mode = vga_mode;
  switch (sd->webcam) {
  case 130:
  case 128:
  case 129:
   gspca_dev->cam.nmodes = ARRAY_SIZE(vga_mode);
   break;
  default:
   gspca_dev->cam.nmodes = 1;
   break;
  }
 }

 return gspca_dev->usb_err;
}
