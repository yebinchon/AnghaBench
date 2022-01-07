
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int flags; } ;


 int RTL8152_UNPLUG ;
 int r8153_power_cut_en (struct r8152*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rtl8153_unload(struct r8152 *tp)
{
 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return;

 r8153_power_cut_en(tp, 0);
}
