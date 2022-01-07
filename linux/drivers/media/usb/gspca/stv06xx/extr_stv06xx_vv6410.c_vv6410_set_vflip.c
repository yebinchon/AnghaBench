
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ __s32 ;


 int D_CONF ;
 int VV6410_DATAFORMAT ;
 int VV6410_VFLIP ;
 int gspca_dbg (struct gspca_dev*,int ,char*,scalar_t__) ;
 int stv06xx_read_sensor (struct sd*,int ,int *) ;
 int stv06xx_write_sensor (struct sd*,int ,int ) ;

__attribute__((used)) static int vv6410_set_vflip(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u16 i2c_data;
 struct sd *sd = (struct sd *) gspca_dev;

 err = stv06xx_read_sensor(sd, VV6410_DATAFORMAT, &i2c_data);
 if (err < 0)
  return err;

 if (val)
  i2c_data |= VV6410_VFLIP;
 else
  i2c_data &= ~VV6410_VFLIP;

 gspca_dbg(gspca_dev, D_CONF, "Set vertical flip to %d\n", val);
 err = stv06xx_write_sensor(sd, VV6410_DATAFORMAT, i2c_data);

 return (err < 0) ? err : 0;
}
