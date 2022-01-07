
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; } ;
struct sensor_w_data {int member_0; int member_1; int member_3; TYPE_2__ member_2; } ;
struct sd {int sensor_type; } ;
struct TYPE_3__ {int width; } ;
struct gspca_dev {int* usb_buf; TYPE_1__ pixfmt; } ;
typedef int __u8 ;


 int ARRAY_SIZE (struct sensor_w_data const*) ;
 int memcpy (int*,int const*,int) ;
 int mr_write (struct gspca_dev*,int) ;
 int sensor_write_regs (struct gspca_dev*,struct sensor_w_data const*,int ) ;

__attribute__((used)) static int start_cif_cam(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u8 *data = gspca_dev->usb_buf;
 int err_code;
 static const __u8 startup_string[] = {
  0x00,
  0x0d,
  0x01,
  0x00,
  0x00,
  0x13,
  0x00,
  0x00,
  0x00,
  0x50,
  0xc0
 };



 memcpy(data, startup_string, 11);
 if (sd->sensor_type)
  data[5] = 0xbb;

 switch (gspca_dev->pixfmt.width) {
 case 160:
  data[9] |= 0x04;

 case 320:
 default:
  data[3] = 0x28;
  data[4] = 0x3c;
  data[6] = 0x14;
  data[8] = 0x1a + sd->sensor_type;
  break;
 case 176:
  data[9] |= 0x04;

 case 352:
  data[3] = 0x2c;
  data[4] = 0x48;
  data[6] = 0x06;
  data[8] = 0x06 - sd->sensor_type;
  break;
 }
 err_code = mr_write(gspca_dev, 11);
 if (err_code < 0)
  return err_code;

 if (!sd->sensor_type) {
  static const struct sensor_w_data cif_sensor0_init_data[] = {
   {0x02, 0x00, {0x03, 0x5a, 0xb5, 0x01,
          0x0f, 0x14, 0x0f, 0x10}, 8},
   {0x0c, 0x00, {0x04, 0x01, 0x01, 0x00, 0x1f}, 5},
   {0x12, 0x00, {0x07}, 1},
   {0x1f, 0x00, {0x06}, 1},
   {0x27, 0x00, {0x04}, 1},
   {0x29, 0x00, {0x0c}, 1},
   {0x40, 0x00, {0x40, 0x00, 0x04}, 3},
   {0x50, 0x00, {0x60}, 1},
   {0x60, 0x00, {0x06}, 1},
   {0x6b, 0x00, {0x85, 0x85, 0xc8, 0xc8, 0xc8, 0xc8}, 6},
   {0x72, 0x00, {0x1e, 0x56}, 2},
   {0x75, 0x00, {0x58, 0x40, 0xa2, 0x02, 0x31, 0x02,
          0x31, 0x80, 0x00}, 9},
   {0x11, 0x00, {0x01}, 1},
   {0, 0, {0}, 0}
  };
  err_code = sensor_write_regs(gspca_dev, cif_sensor0_init_data,
      ARRAY_SIZE(cif_sensor0_init_data));
 } else {
  static const struct sensor_w_data cif_sensor1_init_data[] = {

   {0x02, 0x00, {0x10}, 1},
   {0x05, 0x01, {0x22}, 1},
   {0x06, 0x01, {0x00}, 1},
   {0x09, 0x02, {0x0e}, 1},
   {0x0a, 0x02, {0x05}, 1},
   {0x0b, 0x02, {0x05}, 1},
   {0x0c, 0x02, {0x0f}, 1},
   {0x0d, 0x02, {0x07}, 1},
   {0x0e, 0x02, {0x0c}, 1},
   {0x0f, 0x00, {0x00}, 1},
   {0x10, 0x00, {0x06}, 1},
   {0x11, 0x00, {0x07}, 1},
   {0x12, 0x00, {0x00}, 1},
   {0x13, 0x00, {0x01}, 1},
   {0, 0, {0}, 0}
  };

  gspca_dev->usb_buf[0] = 0x0a;
  gspca_dev->usb_buf[1] = 0x00;
  err_code = mr_write(gspca_dev, 2);
  if (err_code < 0)
   return err_code;
  err_code = sensor_write_regs(gspca_dev, cif_sensor1_init_data,
      ARRAY_SIZE(cif_sensor1_init_data));
 }
 return err_code;
}
