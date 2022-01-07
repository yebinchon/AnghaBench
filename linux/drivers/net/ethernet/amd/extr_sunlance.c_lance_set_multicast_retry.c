
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct lance_private {struct net_device* dev; } ;


 struct lance_private* from_timer (int ,struct timer_list*,int ) ;
 int lance_set_multicast (struct net_device*) ;
 struct lance_private* lp ;
 int multicast_timer ;

__attribute__((used)) static void lance_set_multicast_retry(struct timer_list *t)
{
 struct lance_private *lp = from_timer(lp, t, multicast_timer);
 struct net_device *dev = lp->dev;

 lance_set_multicast(dev);
}
