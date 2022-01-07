
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct ioc3_private {TYPE_1__ ioc3_timer; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void ioc3_mii_start(struct ioc3_private *ip)
{
 ip->ioc3_timer.expires = jiffies + (12 * HZ) / 10;
 add_timer(&ip->ioc3_timer);
}
