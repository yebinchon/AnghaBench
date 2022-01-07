
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int D_CONF ;
 int MT9M111_SC_GREEN_1_GAIN ;
 int MT9M111_SC_GREEN_2_GAIN ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int mt9m111_set_green_balance(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 data[2];
 struct sd *sd = (struct sd *) gspca_dev;

 data[1] = (val & 0xff);
 data[0] = (val & 0xff00) >> 8;

 gspca_dbg(gspca_dev, D_CONF, "Set green balance %d\n", val);
 err = m5602_write_sensor(sd, MT9M111_SC_GREEN_1_GAIN,
     data, 2);
 if (err < 0)
  return err;

 return m5602_write_sensor(sd, MT9M111_SC_GREEN_2_GAIN,
      data, 2);
}
