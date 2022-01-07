
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_device {int dummy; } ;
struct device {int parent; } ;


 int kfree (struct enclosure_device*) ;
 int put_device (int ) ;
 struct enclosure_device* to_enclosure_device (struct device*) ;

__attribute__((used)) static void enclosure_release(struct device *cdev)
{
 struct enclosure_device *edev = to_enclosure_device(cdev);

 put_device(cdev->parent);
 kfree(edev);
}
