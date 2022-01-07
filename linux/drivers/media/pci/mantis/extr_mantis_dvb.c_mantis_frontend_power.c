
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {int power; } ;
typedef enum mantis_power { ____Placeholder_mantis_power } mantis_power ;


 int MANTIS_DEBUG ;


 int dprintk (int ,int,char*,...) ;
 int mantis_gpio_set_bits (struct mantis_pci*,int ,int const) ;
 int msleep (int) ;

int mantis_frontend_power(struct mantis_pci *mantis, enum mantis_power power)
{
 struct mantis_hwconfig *config = mantis->hwconfig;

 switch (power) {
 case 128:
  dprintk(MANTIS_DEBUG, 1, "Power ON");
  mantis_gpio_set_bits(mantis, config->power, 128);
  msleep(100);
  mantis_gpio_set_bits(mantis, config->power, 128);
  msleep(100);
  break;

 case 129:
  dprintk(MANTIS_DEBUG, 1, "Power OFF");
  mantis_gpio_set_bits(mantis, config->power, 129);
  msleep(100);
  break;

 default:
  dprintk(MANTIS_DEBUG, 1, "Unknown state <%02x>", power);
  return -1;
 }

 return 0;
}
