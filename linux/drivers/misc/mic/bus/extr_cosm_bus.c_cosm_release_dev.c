
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cosm_device {int dummy; } ;


 struct cosm_device* dev_to_cosm (struct device*) ;
 int kfree (struct cosm_device*) ;

__attribute__((used)) static inline void cosm_release_dev(struct device *d)
{
 struct cosm_device *cdev = dev_to_cosm(d);

 kfree(cdev);
}
