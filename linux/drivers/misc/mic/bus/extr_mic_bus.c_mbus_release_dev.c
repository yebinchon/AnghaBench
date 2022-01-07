
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbus_device {int dummy; } ;
struct device {int dummy; } ;


 struct mbus_device* dev_to_mbus (struct device*) ;
 int kfree (struct mbus_device*) ;

__attribute__((used)) static void mbus_release_dev(struct device *d)
{
 struct mbus_device *mbdev = dev_to_mbus(d);
 kfree(mbdev);
}
