
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int client; } ;


 int DRIVER_NAME ;
 int EINVAL ;
 int ENODEV ;
 unsigned int GPIO1 ;
 unsigned int GPIO4 ;

 int TPS_DEFGPIO ;
 unsigned int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,unsigned int,char*,unsigned int) ;
 TYPE_1__* the_tps ;

int tps65010_set_gpio_out_value(unsigned gpio, unsigned value)
{
 int status;
 unsigned defgpio;

 if (!the_tps)
  return -ENODEV;
 if ((gpio < GPIO1) || (gpio > GPIO4))
  return -EINVAL;

 mutex_lock(&the_tps->lock);

 defgpio = i2c_smbus_read_byte_data(the_tps->client, TPS_DEFGPIO);


 defgpio |= 1 << (gpio + 3);


 switch (value) {
 case 128:
  defgpio |= 1 << (gpio - 1);
  break;

 default:
  defgpio &= ~(1 << (gpio - 1));
  break;
 }

 status = i2c_smbus_write_byte_data(the_tps->client,
  TPS_DEFGPIO, defgpio);

 pr_debug("%s: gpio%dout = %s, defgpio 0x%02x\n", DRIVER_NAME,
  gpio, value ? "high" : "low",
  i2c_smbus_read_byte_data(the_tps->client, TPS_DEFGPIO));

 mutex_unlock(&the_tps->lock);
 return status;
}
