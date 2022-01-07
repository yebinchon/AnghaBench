
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arp_interval; } ;
struct bonding {TYPE_1__ params; } ;


 int jiffies ;
 int msecs_to_jiffies (int ) ;
 int time_in_range (int ,unsigned long,unsigned long) ;

__attribute__((used)) static bool bond_time_in_interval(struct bonding *bond, unsigned long last_act,
      int mod)
{
 int delta_in_ticks = msecs_to_jiffies(bond->params.arp_interval);

 return time_in_range(jiffies,
        last_act - delta_in_ticks,
        last_act + mod * delta_in_ticks + delta_in_ticks/2);
}
