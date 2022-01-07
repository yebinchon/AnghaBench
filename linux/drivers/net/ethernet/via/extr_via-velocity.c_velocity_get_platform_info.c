
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct velocity_info {int no_eeprom; TYPE_1__* dev; int memaddr; } ;
struct resource {int start; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 scalar_t__ VELOCITY_IO_SIZE ;
 int dev_err (TYPE_1__*,char*) ;
 int of_address_to_resource (int ,int ,struct resource*) ;
 scalar_t__ of_get_property (int ,char*,int *) ;
 scalar_t__ resource_size (struct resource*) ;

__attribute__((used)) static int velocity_get_platform_info(struct velocity_info *vptr)
{
 struct resource res;
 int ret;

 if (of_get_property(vptr->dev->of_node, "no-eeprom", ((void*)0)))
  vptr->no_eeprom = 1;

 ret = of_address_to_resource(vptr->dev->of_node, 0, &res);
 if (ret) {
  dev_err(vptr->dev, "unable to find memory address\n");
  return ret;
 }

 vptr->memaddr = res.start;

 if (resource_size(&res) < VELOCITY_IO_SIZE) {
  dev_err(vptr->dev, "memory region is too small.\n");
  return -EINVAL;
 }

 return 0;
}
