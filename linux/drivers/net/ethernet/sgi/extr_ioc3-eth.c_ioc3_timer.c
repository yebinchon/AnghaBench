
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct ioc3_private {TYPE_1__ ioc3_timer; int mii; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 struct ioc3_private* from_timer (int ,struct timer_list*,void (*) (struct timer_list*)) ;
 int ioc3_setup_duplex (struct ioc3_private*) ;
 struct ioc3_private* ip ;
 scalar_t__ jiffies ;
 int mii_check_media (int *,int,int ) ;

__attribute__((used)) static void ioc3_timer(struct timer_list *t)
{
 struct ioc3_private *ip = from_timer(ip, t, ioc3_timer);


 mii_check_media(&ip->mii, 1, 0);
 ioc3_setup_duplex(ip);

 ip->ioc3_timer.expires = jiffies + ((12 * HZ) / 10);
 add_timer(&ip->ioc3_timer);
}
