
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dev; } ;


 int get_device (int ) ;

__attribute__((used)) static struct mei_device *mei_dev_bus_get(struct mei_device *bus)
{
 if (bus)
  get_device(bus->dev);

 return bus;
}
