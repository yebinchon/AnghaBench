
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;


 int D_STREAM ;
 int LED_OFF ;
 int STV_LED_CTRL ;
 int VV6410_LOW_POWER_MODE ;
 int VV6410_SETUP0 ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int stv06xx_write_bridge (struct sd*,int ,int ) ;
 int stv06xx_write_sensor (struct sd*,int ,int ) ;

__attribute__((used)) static int vv6410_stop(struct sd *sd)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
 int err;


 err = stv06xx_write_bridge(sd, STV_LED_CTRL, LED_OFF);
 if (err < 0)
  return err;

 err = stv06xx_write_sensor(sd, VV6410_SETUP0, VV6410_LOW_POWER_MODE);
 if (err < 0)
  return err;

 gspca_dbg(gspca_dev, D_STREAM, "Halting stream\n");

 return 0;
}
