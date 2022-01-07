
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl8169_private {int dummy; } ;


 int ERIAR_MASK_SHIFT ;
 int ERIAR_OOB ;
 int _rtl_eri_write (struct rtl8169_private*,int ,int,int,int ) ;

__attribute__((used)) static void r8168ep_ocp_write(struct rtl8169_private *tp, u8 mask, u16 reg,
         u32 data)
{
 _rtl_eri_write(tp, reg, ((u32)mask & 0x0f) << ERIAR_MASK_SHIFT,
         data, ERIAR_OOB);
}
