
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl8169_private {int dummy; } ;


 int r8168_mac_ocp_read (struct rtl8169_private*,int ) ;
 int r8168_mac_ocp_write (struct rtl8169_private*,int ,int) ;

__attribute__((used)) static void r8168_mac_ocp_modify(struct rtl8169_private *tp, u32 reg, u16 mask,
     u16 set)
{
 u16 data = r8168_mac_ocp_read(tp, reg);

 r8168_mac_ocp_write(tp, reg, (data & ~mask) | set);
}
