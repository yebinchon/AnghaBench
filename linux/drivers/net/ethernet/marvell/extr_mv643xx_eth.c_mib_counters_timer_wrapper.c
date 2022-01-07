
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mv643xx_eth_private {int mib_counters_timer; } ;


 int HZ ;
 struct mv643xx_eth_private* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mib_counters_timer ;
 int mib_counters_update (struct mv643xx_eth_private*) ;
 int mod_timer (int *,scalar_t__) ;
 struct mv643xx_eth_private* mp ;

__attribute__((used)) static void mib_counters_timer_wrapper(struct timer_list *t)
{
 struct mv643xx_eth_private *mp = from_timer(mp, t, mib_counters_timer);
 mib_counters_update(mp);
 mod_timer(&mp->mib_counters_timer, jiffies + 30 * HZ);
}
