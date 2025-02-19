
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd {int hstart; int vstart; } ;
struct gspca_dev {scalar_t__ usb_err; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ ENODEV ;
 int i2c_r2 (struct gspca_dev*,int,int*) ;
 int i2c_w2_buf (struct gspca_dev*,int ,int ) ;
 int mt9m001_init ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;

__attribute__((used)) static void mt9m001_init_sensor(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u16 id;

 i2c_r2(gspca_dev, 0x00, &id);
 if (gspca_dev->usb_err < 0)
  return;


 switch (id) {
 case 0x8411:
 case 0x8421:
  pr_info("MT9M001 color sensor detected\n");
  break;
 case 0x8431:
  pr_info("MT9M001 mono sensor detected\n");
  break;
 default:
  pr_err("No MT9M001 chip detected, ID = %x\n\n", id);
  gspca_dev->usb_err = -ENODEV;
  return;
 }

 i2c_w2_buf(gspca_dev, mt9m001_init, ARRAY_SIZE(mt9m001_init));
 if (gspca_dev->usb_err < 0)
  pr_err("MT9M001 sensor initialization failed\n");

 sd->hstart = 1;
 sd->vstart = 1;
}
