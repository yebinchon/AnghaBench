
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {int devlist; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tm6000_devlist ;
 int tm6000_devlist_mutex ;

void tm6000_add_into_devlist(struct tm6000_core *dev)
{
 mutex_lock(&tm6000_devlist_mutex);
 list_add_tail(&dev->devlist, &tm6000_devlist);
 mutex_unlock(&tm6000_devlist_mutex);
}
