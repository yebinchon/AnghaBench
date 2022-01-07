
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {int reset; } ;


 int MANTIS_DEBUG ;
 int dprintk (int ,int,char*) ;
 int mantis_gpio_set_bits (struct mantis_pci*,int ,int) ;
 int msleep (int) ;

void mantis_frontend_soft_reset(struct mantis_pci *mantis)
{
 struct mantis_hwconfig *config = mantis->hwconfig;

 dprintk(MANTIS_DEBUG, 1, "Frontend RESET");
 mantis_gpio_set_bits(mantis, config->reset, 0);
 msleep(100);
 mantis_gpio_set_bits(mantis, config->reset, 0);
 msleep(100);
 mantis_gpio_set_bits(mantis, config->reset, 1);
 msleep(100);
 mantis_gpio_set_bits(mantis, config->reset, 1);
 msleep(100);

 return;
}
