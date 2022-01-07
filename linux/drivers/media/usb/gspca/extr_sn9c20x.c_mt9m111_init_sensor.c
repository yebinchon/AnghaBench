
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int vstart; scalar_t__ hstart; } ;
struct gspca_dev {scalar_t__ usb_err; } ;


 int ARRAY_SIZE (int ) ;
 int i2c_w2_buf (struct gspca_dev*,int ,int ) ;
 int mt9m111_init ;
 int pr_err (char*) ;

__attribute__((used)) static void mt9m111_init_sensor(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 i2c_w2_buf(gspca_dev, mt9m111_init, ARRAY_SIZE(mt9m111_init));
 if (gspca_dev->usb_err < 0)
  pr_err("MT9M111 sensor initialization failed\n");

 sd->hstart = 0;
 sd->vstart = 2;
}
