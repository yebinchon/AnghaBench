
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int dummy; } ;


 int r8153_queue_wake (struct r8152*,int) ;
 int r8153_u2p3en (struct r8152*,int) ;
 int r8153b_u1u2en (struct r8152*,int) ;
 int r8153b_ups_en (struct r8152*,int) ;
 int rtl_runtime_suspend_enable (struct r8152*,int) ;

__attribute__((used)) static void rtl8153b_runtime_enable(struct r8152 *tp, bool enable)
{
 if (enable) {
  r8153_queue_wake(tp, 1);
  r8153b_u1u2en(tp, 0);
  r8153_u2p3en(tp, 0);
  rtl_runtime_suspend_enable(tp, 1);
  r8153b_ups_en(tp, 1);
 } else {
  r8153b_ups_en(tp, 0);
  r8153_queue_wake(tp, 0);
  rtl_runtime_suspend_enable(tp, 0);
  r8153_u2p3en(tp, 1);
  r8153b_u1u2en(tp, 1);
 }
}
