
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int expires; } ;
struct frad_local {TYPE_1__ timer; struct net_device* dev; } ;


 int SDLA_502_RCV_BUF ;
 int add_timer (TYPE_1__*) ;
 struct frad_local* flp ;
 struct frad_local* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ sdla_byte (struct net_device*,int ) ;
 int sdla_receive (struct net_device*) ;
 int timer ;

__attribute__((used)) static void sdla_poll(struct timer_list *t)
{
 struct frad_local *flp = from_timer(flp, t, timer);
 struct net_device *dev = flp->dev;

 if (sdla_byte(dev, SDLA_502_RCV_BUF))
  sdla_receive(dev);

 flp->timer.expires = 1;
 add_timer(&flp->timer);
}
