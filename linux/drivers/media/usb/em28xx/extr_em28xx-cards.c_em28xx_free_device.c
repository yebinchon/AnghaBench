
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kref {int dummy; } ;
struct em28xx {scalar_t__ ts; struct em28xx* alt_max_pkt_size_isoc; int disconnected; TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ PRIMARY_TS ;
 int dev_info (int *,char*) ;
 int em28xx_release_resources (struct em28xx*) ;
 int kfree (struct em28xx*) ;
 struct em28xx* kref_to_dev (struct kref*) ;

void em28xx_free_device(struct kref *ref)
{
 struct em28xx *dev = kref_to_dev(ref);

 dev_info(&dev->intf->dev, "Freeing device\n");

 if (!dev->disconnected)
  em28xx_release_resources(dev);

 if (dev->ts == PRIMARY_TS)
  kfree(dev->alt_max_pkt_size_isoc);

 kfree(dev);
}
