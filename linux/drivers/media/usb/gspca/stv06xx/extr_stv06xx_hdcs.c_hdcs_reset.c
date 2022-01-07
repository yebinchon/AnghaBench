
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {struct hdcs* sensor_priv; } ;
struct hdcs {int state; } ;


 int HDCS_REG_CONTROL (struct sd*) ;
 int HDCS_STATE_IDLE ;
 int stv06xx_write_sensor (struct sd*,int ,int) ;

__attribute__((used)) static int hdcs_reset(struct sd *sd)
{
 struct hdcs *hdcs = sd->sensor_priv;
 int err;

 err = stv06xx_write_sensor(sd, HDCS_REG_CONTROL(sd), 1);
 if (err < 0)
  return err;

 err = stv06xx_write_sensor(sd, HDCS_REG_CONTROL(sd), 0);
 if (err < 0)
  hdcs->state = HDCS_STATE_IDLE;

 return err;
}
