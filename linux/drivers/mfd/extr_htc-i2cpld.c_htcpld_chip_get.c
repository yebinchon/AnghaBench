
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct htcpld_chip {unsigned int cache_out; unsigned int cache_in; } ;
struct gpio_chip {int label; } ;


 int EINVAL ;
 struct htcpld_chip* gpiochip_get_data (struct gpio_chip*) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int htcpld_chip_get(struct gpio_chip *chip, unsigned offset)
{
 struct htcpld_chip *chip_data = gpiochip_get_data(chip);
 u8 cache;

 if (!strncmp(chip->label, "htcpld-out", 10)) {
  cache = chip_data->cache_out;
 } else if (!strncmp(chip->label, "htcpld-in", 9)) {
  cache = chip_data->cache_in;
 } else
  return -EINVAL;

 return (cache >> offset) & 1;
}
