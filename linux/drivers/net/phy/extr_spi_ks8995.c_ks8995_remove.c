
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ks8995_switch {TYPE_2__* pdata; int regs_attr; } ;
struct TYPE_4__ {int reset_gpio; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_desc (int ) ;
 int gpiod_set_value (int ,int) ;
 struct ks8995_switch* spi_get_drvdata (struct spi_device*) ;
 int sysfs_remove_bin_file (int *,int *) ;

__attribute__((used)) static int ks8995_remove(struct spi_device *spi)
{
 struct ks8995_switch *ks = spi_get_drvdata(spi);

 sysfs_remove_bin_file(&spi->dev.kobj, &ks->regs_attr);


 if (ks->pdata && gpio_is_valid(ks->pdata->reset_gpio))
  gpiod_set_value(gpio_to_desc(ks->pdata->reset_gpio), 1);

 return 0;
}
