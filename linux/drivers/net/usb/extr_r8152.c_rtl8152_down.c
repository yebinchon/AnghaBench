
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int flags; } ;


 int RTL8152_UNPLUG ;
 int r8152_aldps_en (struct r8152*,int) ;
 int r8152_power_cut_en (struct r8152*,int) ;
 int r8152b_enter_oob (struct r8152*) ;
 int rtl_drop_queued_tx (struct r8152*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rtl8152_down(struct r8152 *tp)
{
 if (test_bit(RTL8152_UNPLUG, &tp->flags)) {
  rtl_drop_queued_tx(tp);
  return;
 }

 r8152_power_cut_en(tp, 0);
 r8152_aldps_en(tp, 0);
 r8152b_enter_oob(tp);
 r8152_aldps_en(tp, 1);
}
