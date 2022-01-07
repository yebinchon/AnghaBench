
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_component {scalar_t__ dev; } ;
struct device {scalar_t__ parent; } ;


 int enclosure_remove_links (struct enclosure_component*) ;
 int put_device (scalar_t__) ;
 struct enclosure_component* to_enclosure_component (struct device*) ;

__attribute__((used)) static void enclosure_component_release(struct device *dev)
{
 struct enclosure_component *cdev = to_enclosure_component(dev);

 if (cdev->dev) {
  enclosure_remove_links(cdev);
  put_device(cdev->dev);
 }
 put_device(dev->parent);
}
