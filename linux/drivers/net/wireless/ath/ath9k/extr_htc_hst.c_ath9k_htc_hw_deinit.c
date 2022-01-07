
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int dummy; } ;


 int ath9k_htc_disconnect_device (struct htc_target*,int) ;

void ath9k_htc_hw_deinit(struct htc_target *target, bool hot_unplug)
{
 if (target)
  ath9k_htc_disconnect_device(target, hot_unplug);
}
