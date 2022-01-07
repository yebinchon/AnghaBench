
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; int get; int set; int direction_output; int direction_input; int get_direction; int ngpio; int label; int owner; int parent; } ;
struct gpmc_device {int dev; TYPE_1__ gpio_chip; } ;


 int DEVICE_NAME ;
 int THIS_MODULE ;
 int dev_err (int ,char*,int) ;
 int devm_gpiochip_add_data (int ,TYPE_1__*,int *) ;
 int gpmc_gpio_direction_input ;
 int gpmc_gpio_direction_output ;
 int gpmc_gpio_get ;
 int gpmc_gpio_get_direction ;
 int gpmc_gpio_set ;
 int gpmc_nr_waitpins ;

__attribute__((used)) static int gpmc_gpio_init(struct gpmc_device *gpmc)
{
 int ret;

 gpmc->gpio_chip.parent = gpmc->dev;
 gpmc->gpio_chip.owner = THIS_MODULE;
 gpmc->gpio_chip.label = DEVICE_NAME;
 gpmc->gpio_chip.ngpio = gpmc_nr_waitpins;
 gpmc->gpio_chip.get_direction = gpmc_gpio_get_direction;
 gpmc->gpio_chip.direction_input = gpmc_gpio_direction_input;
 gpmc->gpio_chip.direction_output = gpmc_gpio_direction_output;
 gpmc->gpio_chip.set = gpmc_gpio_set;
 gpmc->gpio_chip.get = gpmc_gpio_get;
 gpmc->gpio_chip.base = -1;

 ret = devm_gpiochip_add_data(gpmc->dev, &gpmc->gpio_chip, ((void*)0));
 if (ret < 0) {
  dev_err(gpmc->dev, "could not register gpio chip: %d\n", ret);
  return ret;
 }

 return 0;
}
