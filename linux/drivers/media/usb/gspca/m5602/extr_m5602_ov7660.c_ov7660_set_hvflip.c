
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sd {TYPE_1__* vflip; TYPE_2__* hflip; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 int D_CONF ;
 int OV7660_MVFP ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int ov7660_set_hvflip(struct gspca_dev *gspca_dev)
{
 int err;
 u8 i2c_data;
 struct sd *sd = (struct sd *) gspca_dev;

 gspca_dbg(gspca_dev, D_CONF, "Set hvflip to %d, %d\n",
    sd->hflip->val, sd->vflip->val);

 i2c_data = (sd->hflip->val << 5) | (sd->vflip->val << 4);

 err = m5602_write_sensor(sd, OV7660_MVFP, &i2c_data, 1);

 return err;
}
