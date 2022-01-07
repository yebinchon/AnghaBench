
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl8169_private {int dummy; } ;


 int ERIAR_OOB ;
 int _rtl_eri_read (struct rtl8169_private*,int ,int ) ;

__attribute__((used)) static u32 r8168ep_ocp_read(struct rtl8169_private *tp, u8 mask, u16 reg)
{
 return _rtl_eri_read(tp, reg, ERIAR_OOB);
}
