
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {scalar_t__ version; int flags; } ;


 int RTL8152_UNPLUG ;
 scalar_t__ RTL_VER_01 ;
 int r8152_power_cut_en (struct r8152*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rtl8152_unload(struct r8152 *tp)
{
 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return;

 if (tp->version != RTL_VER_01)
  r8152_power_cut_en(tp, 1);
}
