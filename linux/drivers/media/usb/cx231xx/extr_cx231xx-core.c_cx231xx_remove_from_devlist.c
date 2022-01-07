
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int devlist_count; int devlist; int * udev; } ;


 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int cx231xx_devlist_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cx231xx_remove_from_devlist(struct cx231xx *dev)
{
 if (dev == ((void*)0))
  return;
 if (dev->udev == ((void*)0))
  return;

 if (atomic_read(&dev->devlist_count) > 0) {
  mutex_lock(&cx231xx_devlist_mutex);
  list_del(&dev->devlist);
  atomic_dec(&dev->devlist_count);
  mutex_unlock(&cx231xx_devlist_mutex);
 }
}
