
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int flags; } ;


 int RTL8152_UNPLUG ;
 int r8153_aldps_en (struct r8152*,int) ;
 int r8153_enter_oob (struct r8152*) ;
 int r8153_power_cut_en (struct r8152*,int) ;
 int r8153_u1u2en (struct r8152*,int) ;
 int r8153_u2p3en (struct r8152*,int) ;
 int rtl_drop_queued_tx (struct r8152*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rtl8153_down(struct r8152 *tp)
{
 if (test_bit(RTL8152_UNPLUG, &tp->flags)) {
  rtl_drop_queued_tx(tp);
  return;
 }

 r8153_u1u2en(tp, 0);
 r8153_u2p3en(tp, 0);
 r8153_power_cut_en(tp, 0);
 r8153_aldps_en(tp, 0);
 r8153_enter_oob(tp);
 r8153_aldps_en(tp, 1);
}
