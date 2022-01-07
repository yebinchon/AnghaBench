
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {struct pb0100_ctrls* sensor_priv; } ;
struct pb0100_ctrls {TYPE_1__* natural; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;
struct TYPE_2__ {scalar_t__ val; } ;


 int BIT (int) ;
 int D_CONF ;
 int PB_EXPGAIN ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,scalar_t__,int) ;
 int stv06xx_write_sensor (struct sd*,int ,int) ;

__attribute__((used)) static int pb0100_set_autogain(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 struct sd *sd = (struct sd *) gspca_dev;
 struct pb0100_ctrls *ctrls = sd->sensor_priv;

 if (val) {
  if (ctrls->natural->val)
   val = BIT(6)|BIT(4)|BIT(0);
  else
   val = BIT(4)|BIT(0);
 } else
  val = 0;

 err = stv06xx_write_sensor(sd, PB_EXPGAIN, val);
 gspca_dbg(gspca_dev, D_CONF, "Set autogain to %d (natural: %d), status: %d\n",
    val, ctrls->natural->val, err);

 return err;
}
