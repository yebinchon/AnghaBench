
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {struct pb0100_ctrls* sensor_priv; } ;
struct pb0100_ctrls {TYPE_2__* blue; TYPE_1__* red; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 int D_CONF ;
 int PB_G1GAIN ;
 int PB_G2GAIN ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int) ;
 int pb0100_set_blue_balance (struct gspca_dev*,int ) ;
 int pb0100_set_red_balance (struct gspca_dev*,int ) ;
 int stv06xx_write_sensor (struct sd*,int ,int ) ;

__attribute__((used)) static int pb0100_set_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 struct sd *sd = (struct sd *) gspca_dev;
 struct pb0100_ctrls *ctrls = sd->sensor_priv;

 err = stv06xx_write_sensor(sd, PB_G1GAIN, val);
 if (!err)
  err = stv06xx_write_sensor(sd, PB_G2GAIN, val);
 gspca_dbg(gspca_dev, D_CONF, "Set green gain to %d, status: %d\n",
    val, err);

 if (!err)
  err = pb0100_set_red_balance(gspca_dev, ctrls->red->val);
 if (!err)
  err = pb0100_set_blue_balance(gspca_dev, ctrls->blue->val);

 return err;
}
