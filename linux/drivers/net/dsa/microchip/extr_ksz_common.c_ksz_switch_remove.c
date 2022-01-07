
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct ksz_device {scalar_t__ reset_gpio; int ds; TYPE_1__* dev_ops; int mib_read; TYPE_2__ mib_read_timer; } ;
struct TYPE_3__ {int (* exit ) (struct ksz_device*) ;} ;


 int del_timer_sync (TYPE_2__*) ;
 int dsa_unregister_switch (int ) ;
 int flush_work (int *) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int stub1 (struct ksz_device*) ;

void ksz_switch_remove(struct ksz_device *dev)
{

 if (dev->mib_read_timer.expires) {
  del_timer_sync(&dev->mib_read_timer);
  flush_work(&dev->mib_read);
 }

 dev->dev_ops->exit(dev);
 dsa_unregister_switch(dev->ds);

 if (dev->reset_gpio)
  gpiod_set_value_cansleep(dev->reset_gpio, 1);

}
