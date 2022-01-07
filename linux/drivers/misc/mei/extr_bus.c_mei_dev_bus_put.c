
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dev; } ;


 int put_device (int ) ;

__attribute__((used)) static void mei_dev_bus_put(struct mei_device *bus)
{
 if (bus)
  put_device(bus->dev);
}
