
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cosm_device {int state; int cosm_mutex; } ;





 int cosm_stop (struct cosm_device*,int) ;
 struct cosm_device* dev_to_cosm (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cosm_suspend(struct device *dev)
{
 struct cosm_device *cdev = dev_to_cosm(dev);

 mutex_lock(&cdev->cosm_mutex);
 switch (cdev->state) {






 case 129:
 case 130:
 case 128:
  mutex_unlock(&cdev->cosm_mutex);
  cosm_stop(cdev, 0);
  break;
 default:
  mutex_unlock(&cdev->cosm_mutex);
  break;
 }
 return 0;
}
