
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_regulator_driver_data {unsigned long features; int * data; int * get_voltage; int * set_voltage; } ;
struct regulator_init_data {unsigned int num_consumer_supplies; struct twl_regulator_driver_data* driver_data; struct regulator_consumer_supply* consumer_supplies; } ;
struct regulator_consumer_supply {int dummy; } ;
struct device {int dummy; } ;


 int TWL_MODULE_PM_MASTER ;
 struct device* add_numbered_child (int ,char*,int,struct regulator_init_data*,int,int,int ,int ) ;

__attribute__((used)) static struct device *
add_regulator_linked(int num, struct regulator_init_data *pdata,
  struct regulator_consumer_supply *consumers,
  unsigned num_consumers, unsigned long features)
{
 struct twl_regulator_driver_data drv_data;


 if (!pdata)
  return ((void*)0);

 if (consumers) {
  pdata->consumer_supplies = consumers;
  pdata->num_consumer_supplies = num_consumers;
 }

 if (pdata->driver_data) {

  struct twl_regulator_driver_data *tmp;
  tmp = pdata->driver_data;
  tmp->features |= features;
 } else {

  drv_data.features = features;
  drv_data.set_voltage = ((void*)0);
  drv_data.get_voltage = ((void*)0);
  drv_data.data = ((void*)0);
  pdata->driver_data = &drv_data;
 }


 return add_numbered_child(TWL_MODULE_PM_MASTER, "twl_reg", num,
  pdata, sizeof(*pdata), 0, 0, 0);
}
