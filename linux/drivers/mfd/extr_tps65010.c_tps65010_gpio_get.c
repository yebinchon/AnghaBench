
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65010 {int client; } ;
struct gpio_chip {int dummy; } ;


 int TPS_DEFGPIO ;
 struct tps65010* gpiochip_get_data (struct gpio_chip*) ;
 int i2c_smbus_read_byte_data (int ,int ) ;

__attribute__((used)) static int tps65010_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 int value;
 struct tps65010 *tps;

 tps = gpiochip_get_data(chip);

 if (offset < 4) {
  value = i2c_smbus_read_byte_data(tps->client, TPS_DEFGPIO);
  if (value < 0)
   return value;
  if (value & (1 << (offset + 4)))
   return !(value & (1 << offset));
  else
   return !!(value & (1 << offset));
 }


 return 0;
}
