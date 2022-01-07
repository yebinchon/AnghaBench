
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct memstick_host {int dev; int id; int lock; int (* set_param ) (struct memstick_host*,int ,int ) ;TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int MEMSTICK_POWER ;
 int MEMSTICK_POWER_OFF ;
 int device_del (int *) ;
 int device_unregister (int *) ;
 int flush_workqueue (int ) ;
 int idr_remove (int *,int ) ;
 int memstick_host_idr ;
 int memstick_host_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct memstick_host*,int ,int ) ;
 int workqueue ;

void memstick_remove_host(struct memstick_host *host)
{
 flush_workqueue(workqueue);
 mutex_lock(&host->lock);
 if (host->card)
  device_unregister(&host->card->dev);
 host->card = ((void*)0);
 host->set_param(host, MEMSTICK_POWER, MEMSTICK_POWER_OFF);
 mutex_unlock(&host->lock);

 spin_lock(&memstick_host_lock);
 idr_remove(&memstick_host_idr, host->id);
 spin_unlock(&memstick_host_lock);
 device_del(&host->dev);
}
