
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int D_CONF ;
 int PO1030_GLOBALGAIN ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int po1030_set_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 i2c_data;
 int err;

 i2c_data = val & 0xff;
 gspca_dbg(gspca_dev, D_CONF, "Set global gain to %d\n", i2c_data);
 err = m5602_write_sensor(sd, PO1030_GLOBALGAIN,
     &i2c_data, 1);
 return err;
}
