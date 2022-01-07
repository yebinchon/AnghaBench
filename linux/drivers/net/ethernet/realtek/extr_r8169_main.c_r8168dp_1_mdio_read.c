
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int EPHY_RXER_NUM ;
 int ETIMEDOUT ;
 int OCPAR ;
 int OCPAR_GPHY_READ_CMD ;
 int OCPDR ;
 int OCPDR_DATA_MASK ;
 int OCPDR_READ_CMD ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int ) ;
 int mdelay (int) ;
 int r8168dp_1_mdio_access (struct rtl8169_private*,int,int ) ;
 int rtl_ocpar_cond ;
 scalar_t__ rtl_udelay_loop_wait_high (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static int r8168dp_1_mdio_read(struct rtl8169_private *tp, int reg)
{
 r8168dp_1_mdio_access(tp, reg, OCPDR_READ_CMD);

 mdelay(1);
 RTL_W32(tp, OCPAR, OCPAR_GPHY_READ_CMD);
 RTL_W32(tp, EPHY_RXER_NUM, 0);

 return rtl_udelay_loop_wait_high(tp, &rtl_ocpar_cond, 1000, 100) ?
  RTL_R32(tp, OCPDR) & OCPDR_DATA_MASK : -ETIMEDOUT;
}
