
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int client; } ;


 int DRIVER_NAME ;
 int ENODEV ;
 int TPS_VDCDC2 ;
 unsigned int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,char*) ;
 TYPE_1__* the_tps ;

int tps65010_set_vib(unsigned value)
{
 int status;
 unsigned vdcdc2;

 if (!the_tps)
  return -ENODEV;

 mutex_lock(&the_tps->lock);

 vdcdc2 = i2c_smbus_read_byte_data(the_tps->client, TPS_VDCDC2);
 vdcdc2 &= ~(1 << 1);
 if (value)
  vdcdc2 |= (1 << 1);
 status = i2c_smbus_write_byte_data(the_tps->client,
  TPS_VDCDC2, vdcdc2);

 pr_debug("%s: vibrator %s\n", DRIVER_NAME, value ? "on" : "off");

 mutex_unlock(&the_tps->lock);
 return status;
}
