
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int usb_err; int curr_mode; } ;


 int ARRAY_SIZE (int ) ;

 scalar_t__ SENSOR_OV361x ;
 scalar_t__ SENSOR_OV562x ;
 scalar_t__ SENSOR_OV971x ;



 int bridge_start_qvga ;
 int bridge_start_svga ;
 int bridge_start_sxga ;
 int bridge_start_vga ;
 int bridge_start_xga ;
 int ov965x_start_1_svga ;
 int ov965x_start_1_sxga ;
 int ov965x_start_1_vga ;
 int ov965x_start_1_xga ;
 int ov965x_start_2_qvga ;
 int ov965x_start_2_svga ;
 int ov965x_start_2_sxga ;
 int ov965x_start_2_vga ;
 int reg_w (struct gspca_dev*,int,int) ;
 int reg_w_array (struct gspca_dev*,int ,int ) ;
 int sccb_w_array (struct gspca_dev*,int ,int ) ;
 int sd_start_ov361x (struct gspca_dev*) ;
 int set_led (struct gspca_dev*,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_OV971x)
  return gspca_dev->usb_err;
 if (sd->sensor == SENSOR_OV562x)
  return gspca_dev->usb_err;
 if (sd->sensor == SENSOR_OV361x)
  return sd_start_ov361x(gspca_dev);

 switch (gspca_dev->curr_mode) {
 case 131:
  sccb_w_array(gspca_dev, ov965x_start_1_vga,
    ARRAY_SIZE(ov965x_start_1_vga));
  reg_w_array(gspca_dev, bridge_start_qvga,
    ARRAY_SIZE(bridge_start_qvga));
  sccb_w_array(gspca_dev, ov965x_start_2_qvga,
    ARRAY_SIZE(ov965x_start_2_qvga));
  break;
 case 129:
  sccb_w_array(gspca_dev, ov965x_start_1_vga,
    ARRAY_SIZE(ov965x_start_1_vga));
  reg_w_array(gspca_dev, bridge_start_vga,
    ARRAY_SIZE(bridge_start_vga));
  sccb_w_array(gspca_dev, ov965x_start_2_vga,
    ARRAY_SIZE(ov965x_start_2_vga));
  break;
 case 130:
  sccb_w_array(gspca_dev, ov965x_start_1_svga,
    ARRAY_SIZE(ov965x_start_1_svga));
  reg_w_array(gspca_dev, bridge_start_svga,
    ARRAY_SIZE(bridge_start_svga));
  sccb_w_array(gspca_dev, ov965x_start_2_svga,
    ARRAY_SIZE(ov965x_start_2_svga));
  break;
 case 128:
  sccb_w_array(gspca_dev, ov965x_start_1_xga,
    ARRAY_SIZE(ov965x_start_1_xga));
  reg_w_array(gspca_dev, bridge_start_xga,
    ARRAY_SIZE(bridge_start_xga));
  sccb_w_array(gspca_dev, ov965x_start_2_svga,
    ARRAY_SIZE(ov965x_start_2_svga));
  break;
 default:

  sccb_w_array(gspca_dev, ov965x_start_1_sxga,
    ARRAY_SIZE(ov965x_start_1_sxga));
  reg_w_array(gspca_dev, bridge_start_sxga,
    ARRAY_SIZE(bridge_start_sxga));
  sccb_w_array(gspca_dev, ov965x_start_2_sxga,
    ARRAY_SIZE(ov965x_start_2_sxga));
  break;
 }

 reg_w(gspca_dev, 0xe0, 0x00);
 reg_w(gspca_dev, 0xe0, 0x00);
 set_led(gspca_dev, 1);
 return gspca_dev->usb_err;
}
