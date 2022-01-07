
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {struct pb0100_ctrls* sensor_priv; } ;
struct pb0100_ctrls {TYPE_1__* gain; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;
struct TYPE_2__ {scalar_t__ val; } ;


 int D_CONF ;
 int PB_BGAIN ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int) ;
 int stv06xx_write_sensor (struct sd*,int ,int) ;

__attribute__((used)) static int pb0100_set_blue_balance(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 struct sd *sd = (struct sd *) gspca_dev;
 struct pb0100_ctrls *ctrls = sd->sensor_priv;

 val += ctrls->gain->val;
 if (val < 0)
  val = 0;
 else if (val > 255)
  val = 255;

 err = stv06xx_write_sensor(sd, PB_BGAIN, val);
 gspca_dbg(gspca_dev, D_CONF, "Set blue gain to %d, status: %d\n",
    val, err);

 return err;
}
