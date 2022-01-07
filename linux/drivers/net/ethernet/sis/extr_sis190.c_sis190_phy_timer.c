
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sis190_private {int phy_task; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 struct sis190_private* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ likely (int ) ;
 int netif_running (struct net_device*) ;
 int schedule_work (int *) ;
 int timer ;
 struct sis190_private* tp ;

__attribute__((used)) static void sis190_phy_timer(struct timer_list *t)
{
 struct sis190_private *tp = from_timer(tp, t, timer);
 struct net_device *dev = tp->dev;

 if (likely(netif_running(dev)))
  schedule_work(&tp->phy_task);
}
