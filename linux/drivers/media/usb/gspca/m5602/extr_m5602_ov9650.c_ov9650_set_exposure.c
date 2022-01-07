
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int D_CONF ;
 int OV9650_AECH ;
 int OV9650_AECHM ;
 int OV9650_COM1 ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int ov9650_set_exposure(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 i2c_data;
 int err;

 gspca_dbg(gspca_dev, D_CONF, "Set exposure to %d\n", val);


 i2c_data = (val >> 10) & 0x3f;
 err = m5602_write_sensor(sd, OV9650_AECHM,
      &i2c_data, 1);
 if (err < 0)
  return err;


 i2c_data = (val >> 2) & 0xff;
 err = m5602_write_sensor(sd, OV9650_AECH,
      &i2c_data, 1);
 if (err < 0)
  return err;


 i2c_data = val & 0x03;
 err = m5602_write_sensor(sd, OV9650_COM1, &i2c_data, 1);
 return err;
}
