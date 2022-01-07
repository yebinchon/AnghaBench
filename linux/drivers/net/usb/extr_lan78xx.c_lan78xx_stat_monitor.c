
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lan78xx_net {int dummy; } ;


 int EVENT_STAT_UPDATE ;
 struct lan78xx_net* dev ;
 struct lan78xx_net* from_timer (int ,struct timer_list*,int ) ;
 int lan78xx_defer_kevent (struct lan78xx_net*,int ) ;
 int stat_monitor ;

__attribute__((used)) static void lan78xx_stat_monitor(struct timer_list *t)
{
 struct lan78xx_net *dev = from_timer(dev, t, stat_monitor);

 lan78xx_defer_kevent(dev, EVENT_STAT_UPDATE);
}
