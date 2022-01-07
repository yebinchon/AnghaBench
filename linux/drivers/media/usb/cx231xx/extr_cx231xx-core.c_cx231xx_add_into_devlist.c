
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int devlist_count; int devlist; } ;


 int atomic_inc (int *) ;
 int cx231xx_devlist ;
 int cx231xx_devlist_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cx231xx_add_into_devlist(struct cx231xx *dev)
{
 mutex_lock(&cx231xx_devlist_mutex);
 list_add_tail(&dev->devlist, &cx231xx_devlist);
 atomic_inc(&dev->devlist_count);
 mutex_unlock(&cx231xx_devlist_mutex);
}
