
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int (* open ) (struct rc_dev*) ;int lock; int users; int registered; } ;


 int EINVAL ;
 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct rc_dev*) ;

int rc_open(struct rc_dev *rdev)
{
 int rval = 0;

 if (!rdev)
  return -EINVAL;

 mutex_lock(&rdev->lock);

 if (!rdev->registered) {
  rval = -ENODEV;
 } else {
  if (!rdev->users++ && rdev->open)
   rval = rdev->open(rdev);

  if (rval)
   rdev->users--;
 }

 mutex_unlock(&rdev->lock);

 return rval;
}
