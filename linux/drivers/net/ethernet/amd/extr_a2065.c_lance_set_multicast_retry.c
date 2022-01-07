
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lance_private {int dev; } ;


 struct lance_private* from_timer (int ,struct timer_list*,int ) ;
 int lance_set_multicast (int ) ;
 struct lance_private* lp ;
 int multicast_timer ;

__attribute__((used)) static void lance_set_multicast_retry(struct timer_list *t)
{
 struct lance_private *lp = from_timer(lp, t, multicast_timer);

 lance_set_multicast(lp->dev);
}
