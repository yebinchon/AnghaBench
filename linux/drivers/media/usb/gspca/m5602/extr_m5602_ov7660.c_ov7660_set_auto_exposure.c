
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int D_CONF ;
 int OV7660_COM8 ;
 int V4L2_EXPOSURE_AUTO ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int m5602_read_sensor (struct sd*,int ,int*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int ov7660_set_auto_exposure(struct gspca_dev *gspca_dev,
        __s32 val)
{
 int err;
 u8 i2c_data;
 struct sd *sd = (struct sd *) gspca_dev;

 gspca_dbg(gspca_dev, D_CONF, "Set auto exposure control to %d\n", val);

 err = m5602_read_sensor(sd, OV7660_COM8, &i2c_data, 1);
 if (err < 0)
  return err;

 val = (val == V4L2_EXPOSURE_AUTO);
 i2c_data = ((i2c_data & 0xfe) | ((val & 0x01) << 0));

 return m5602_write_sensor(sd, OV7660_COM8, &i2c_data, 1);
}
