
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8169_private {int dummy; } ;


 int ERIAR_MASK_0001 ;
 int r8168dp_ocp_write (struct rtl8169_private*,int,int,int) ;
 int rtl_eri_write (struct rtl8169_private*,int,int ,int ) ;

__attribute__((used)) static void r8168dp_oob_notify(struct rtl8169_private *tp, u8 cmd)
{
 rtl_eri_write(tp, 0xe8, ERIAR_MASK_0001, cmd);

 r8168dp_ocp_write(tp, 0x1, 0x30, 0x00000001);
}
