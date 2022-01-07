
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_timer_info {int timer; scalar_t__ max; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void ksz_stop_timer(struct ksz_timer_info *info)
{
 if (info->max) {
  info->max = 0;
  del_timer_sync(&info->timer);
 }
}
