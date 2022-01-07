
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mfd_cell {int * usage_count; int num_parent_supplies; int parent_supplies; } ;
struct device {int * type; } ;
typedef int atomic_t ;


 int mfd_dev_type ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 int platform_device_unregister (struct platform_device*) ;
 int regulator_bulk_unregister_supply_alias (struct device*,int ,int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int mfd_remove_devices_fn(struct device *dev, void *c)
{
 struct platform_device *pdev;
 const struct mfd_cell *cell;
 atomic_t **usage_count = c;

 if (dev->type != &mfd_dev_type)
  return 0;

 pdev = to_platform_device(dev);
 cell = mfd_get_cell(pdev);

 regulator_bulk_unregister_supply_alias(dev, cell->parent_supplies,
            cell->num_parent_supplies);


 if (!*usage_count || (cell->usage_count < *usage_count))
  *usage_count = cell->usage_count;

 platform_device_unregister(pdev);
 return 0;
}
