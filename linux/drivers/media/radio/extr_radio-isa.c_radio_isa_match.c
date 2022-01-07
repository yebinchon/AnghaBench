
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_driver {scalar_t__* io_params; scalar_t__ probe; } ;
struct device {struct radio_isa_driver* platform_data; } ;



int radio_isa_match(struct device *pdev, unsigned int dev)
{
 struct radio_isa_driver *drv = pdev->platform_data;

 return drv->probe || drv->io_params[dev] >= 0;
}
