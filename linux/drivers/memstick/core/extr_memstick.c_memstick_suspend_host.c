
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_host {int lock; int (* set_param ) (struct memstick_host*,int ,int ) ;} ;


 int MEMSTICK_POWER ;
 int MEMSTICK_POWER_OFF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct memstick_host*,int ,int ) ;

void memstick_suspend_host(struct memstick_host *host)
{
 mutex_lock(&host->lock);
 host->set_param(host, MEMSTICK_POWER, MEMSTICK_POWER_OFF);
 mutex_unlock(&host->lock);
}
