
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {int devlist; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tm6000_devlist_mutex ;

void tm6000_remove_from_devlist(struct tm6000_core *dev)
{
 mutex_lock(&tm6000_devlist_mutex);
 list_del(&dev->devlist);
 mutex_unlock(&tm6000_devlist_mutex);
}
