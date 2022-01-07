
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int lock; int (* close ) (struct rc_dev*) ;scalar_t__ registered; int users; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct rc_dev*) ;

void rc_close(struct rc_dev *rdev)
{
 if (rdev) {
  mutex_lock(&rdev->lock);

  if (!--rdev->users && rdev->close && rdev->registered)
   rdev->close(rdev);

  mutex_unlock(&rdev->lock);
 }
}
