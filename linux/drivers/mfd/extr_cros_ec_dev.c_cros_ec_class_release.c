
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int kfree (int ) ;
 int to_cros_ec_dev (struct device*) ;

__attribute__((used)) static void cros_ec_class_release(struct device *dev)
{
 kfree(to_cros_ec_dev(dev));
}
