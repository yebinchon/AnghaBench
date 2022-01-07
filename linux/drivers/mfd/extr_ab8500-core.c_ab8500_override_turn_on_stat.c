
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;


 int on_stat_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void* turn_on_stat_mask ;
 void* turn_on_stat_set ;

void ab8500_override_turn_on_stat(u8 mask, u8 set)
{
 spin_lock(&on_stat_lock);
 turn_on_stat_mask = mask;
 turn_on_stat_set = set;
 spin_unlock(&on_stat_lock);
}
