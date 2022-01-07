
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_3__ {int timeout; int interval; } ;
struct cisco_state {TYPE_2__ timer; TYPE_1__ settings; int lock; int rxseq; int txseq; scalar_t__ up; scalar_t__ last_poll; struct net_device* dev; } ;


 int CISCO_KEEPALIVE_REQ ;
 int HZ ;
 int add_timer (TYPE_2__*) ;
 int cisco_keepalive_send (struct net_device*,int ,int ,int ) ;
 struct cisco_state* from_timer (int ,struct timer_list*,int ) ;
 int htonl (int ) ;
 scalar_t__ jiffies ;
 int netdev_info (struct net_device*,char*) ;
 int netif_dormant_on (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct cisco_state* st ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int timer ;

__attribute__((used)) static void cisco_timer(struct timer_list *t)
{
 struct cisco_state *st = from_timer(st, t, timer);
 struct net_device *dev = st->dev;

 spin_lock(&st->lock);
 if (st->up &&
     time_after(jiffies, st->last_poll + st->settings.timeout * HZ)) {
  st->up = 0;
  netdev_info(dev, "Link down\n");
  netif_dormant_on(dev);
 }

 cisco_keepalive_send(dev, CISCO_KEEPALIVE_REQ, htonl(++st->txseq),
        htonl(st->rxseq));
 spin_unlock(&st->lock);

 st->timer.expires = jiffies + st->settings.interval * HZ;
 add_timer(&st->timer);
}
