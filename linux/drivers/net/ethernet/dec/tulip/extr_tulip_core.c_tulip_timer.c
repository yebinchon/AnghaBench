
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tulip_private {int media_work; struct net_device* dev; } ;
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;


 struct tulip_private* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ netif_running (struct net_device*) ;
 int schedule_work (int *) ;
 int timer ;
 struct tulip_private* tp ;

__attribute__((used)) static void tulip_timer(struct timer_list *t)
{
 struct tulip_private *tp = from_timer(tp, t, timer);
 struct net_device *dev = tp->dev;

 if (netif_running(dev))
  schedule_work(&tp->media_work);
}
