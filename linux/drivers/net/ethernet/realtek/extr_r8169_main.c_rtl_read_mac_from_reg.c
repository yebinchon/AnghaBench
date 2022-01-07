
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8169_private {int dummy; } ;


 int ETH_ALEN ;
 int RTL_R8 (struct rtl8169_private*,int) ;

__attribute__((used)) static void rtl_read_mac_from_reg(struct rtl8169_private *tp, u8 *mac, int reg)
{
 int i;

 for (i = 0; i < ETH_ALEN; i++)
  mac[i] = RTL_R8(tp, reg + i);
}
