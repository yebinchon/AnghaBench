
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int dummy; } ;
struct device {int dummy; } ;


 int rc_free_device (struct rc_dev*) ;

__attribute__((used)) static void devm_rc_alloc_release(struct device *dev, void *res)
{
 rc_free_device(*(struct rc_dev **)res);
}
