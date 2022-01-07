
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; int * class; } ;
struct memstick_host {TYPE_1__ dev; int media_checker; int lock; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int device_initialize (TYPE_1__*) ;
 struct memstick_host* kzalloc (int,int ) ;
 int memstick_check ;
 int memstick_host_class ;
 int mutex_init (int *) ;

struct memstick_host *memstick_alloc_host(unsigned int extra,
       struct device *dev)
{
 struct memstick_host *host;

 host = kzalloc(sizeof(struct memstick_host) + extra, GFP_KERNEL);
 if (host) {
  mutex_init(&host->lock);
  INIT_WORK(&host->media_checker, memstick_check);
  host->dev.class = &memstick_host_class;
  host->dev.parent = dev;
  device_initialize(&host->dev);
 }
 return host;
}
