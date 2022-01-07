
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int idProduct; } ;
struct sd {int do_lcd_stop; int sensor_type; int adj_colors; int cam_type; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {int* usb_buf; struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int CAM_TYPE_CIF ;
 int CAM_TYPE_VGA ;
 int D_PROBE ;
 int ENODEV ;
 int cam_get_response16 (struct gspca_dev*,int,int) ;
 int force_sensor_type ;
 int gspca_dbg (struct gspca_dev*,int ,char*,...) ;
 int pr_err (char*,...) ;
 int sd_stopN (struct gspca_dev*) ;
 int stream_start (struct gspca_dev*) ;
 int vga_mode ;
 int zero_the_pointer (struct gspca_dev*) ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;
 int err_code;

 cam = &gspca_dev->cam;
 cam->cam_mode = vga_mode;
 cam->nmodes = ARRAY_SIZE(vga_mode);
 sd->do_lcd_stop = 0;
 err_code = zero_the_pointer(gspca_dev);
 if (err_code < 0)
  return err_code;

 err_code = stream_start(gspca_dev);
 if (err_code < 0)
  return err_code;


 err_code = cam_get_response16(gspca_dev, 0x07, 1);
 if (err_code < 0)
  return err_code;

 if (id->idProduct == 0x0110 || id->idProduct == 0x010e) {
  sd->cam_type = CAM_TYPE_CIF;
  cam->nmodes--;
  switch (gspca_dev->usb_buf[0]) {
  case 2:
   sd->sensor_type = 0;
   break;
  case 3:
   sd->sensor_type = 1;
   break;
  default:
   pr_err("Unknown CIF Sensor id : %02x\n",
          gspca_dev->usb_buf[1]);
   return -ENODEV;
  }
  gspca_dbg(gspca_dev, D_PROBE, "MR97310A CIF camera detected, sensor: %d\n",
     sd->sensor_type);
 } else {
  sd->cam_type = CAM_TYPE_VGA;
  sd->sensor_type = 1;
  sd->do_lcd_stop = 0;
  sd->adj_colors = 0;
  if (gspca_dev->usb_buf[0] == 0x01) {
   sd->sensor_type = 2;
  } else if ((gspca_dev->usb_buf[0] != 0x03) &&
     (gspca_dev->usb_buf[0] != 0x04)) {
   pr_err("Unknown VGA Sensor id Byte 0: %02x\n",
          gspca_dev->usb_buf[0]);
   pr_err("Defaults assumed, may not work\n");
   pr_err("Please report this\n");
  }

  if ((gspca_dev->usb_buf[0] == 0x03) &&
     (gspca_dev->usb_buf[1] == 0x50))
   sd->adj_colors = 1;
  if (gspca_dev->usb_buf[0] == 0x04) {
   sd->do_lcd_stop = 1;
   switch (gspca_dev->usb_buf[1]) {
   case 0x50:
    sd->sensor_type = 0;
    gspca_dbg(gspca_dev, D_PROBE, "sensor_type corrected to 0\n");
    break;
   case 0x20:

    break;
   default:
    pr_err("Unknown VGA Sensor id Byte 1: %02x\n",
           gspca_dev->usb_buf[1]);
    pr_err("Defaults assumed, may not work\n");
    pr_err("Please report this\n");
   }
  }
  gspca_dbg(gspca_dev, D_PROBE, "MR97310A VGA camera detected, sensor: %d\n",
     sd->sensor_type);
 }

 sd_stopN(gspca_dev);

 if (force_sensor_type != -1) {
  sd->sensor_type = !!force_sensor_type;
  gspca_dbg(gspca_dev, D_PROBE, "Forcing sensor type to: %d\n",
     sd->sensor_type);
 }

 return 0;
}
