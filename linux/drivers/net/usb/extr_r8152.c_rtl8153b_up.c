
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int flags; } ;


 int MCU_TYPE_USB ;
 int RTL8152_UNPLUG ;
 int RX_THR_B ;
 int USB_RX_BUF_TH ;
 int ocp_write_dword (struct r8152*,int ,int ,int ) ;
 int r8153_aldps_en (struct r8152*,int) ;
 int r8153_first_init (struct r8152*) ;
 int r8153_u2p3en (struct r8152*,int) ;
 int r8153b_u1u2en (struct r8152*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rtl8153b_up(struct r8152 *tp)
{
 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return;

 r8153b_u1u2en(tp, 0);
 r8153_u2p3en(tp, 0);
 r8153_aldps_en(tp, 0);

 r8153_first_init(tp);
 ocp_write_dword(tp, MCU_TYPE_USB, USB_RX_BUF_TH, RX_THR_B);

 r8153_aldps_en(tp, 1);
 r8153_u2p3en(tp, 1);
 r8153b_u1u2en(tp, 1);
}
