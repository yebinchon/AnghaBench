
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sd {TYPE_2__* vflip; TYPE_1__* hflip; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 int D_CONF ;
 int PO1030_CONTROL2 ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int) ;
 int m5602_read_sensor (struct sd*,int ,int*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int po1030_set_hvflip(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 i2c_data;
 int err;

 gspca_dbg(gspca_dev, D_CONF, "Set hvflip %d %d\n",
    sd->hflip->val, sd->vflip->val);
 err = m5602_read_sensor(sd, PO1030_CONTROL2, &i2c_data, 1);
 if (err < 0)
  return err;

 i2c_data = (0x3f & i2c_data) | (sd->hflip->val << 7) |
     (sd->vflip->val << 6);

 err = m5602_write_sensor(sd, PO1030_CONTROL2,
     &i2c_data, 1);

 return err;
}
