
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_host {int dev; int lock; } ;


 int mutex_destroy (int *) ;
 int put_device (int *) ;

void memstick_free_host(struct memstick_host *host)
{
 mutex_destroy(&host->lock);
 put_device(&host->dev);
}
