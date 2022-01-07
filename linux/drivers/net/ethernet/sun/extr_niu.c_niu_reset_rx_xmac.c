
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int port; int device; } ;


 int ENODEV ;
 int XRXMAC_SW_RST ;
 int XRXMAC_SW_RST_REG_RS ;
 int XRXMAC_SW_RST_SOFT_RST ;
 int dev_err (int ,char*,int ,unsigned long long) ;
 int nr64_mac (int ) ;
 int nw64_mac (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int niu_reset_rx_xmac(struct niu *np)
{
 int limit;

 nw64_mac(XRXMAC_SW_RST,
   XRXMAC_SW_RST_REG_RS | XRXMAC_SW_RST_SOFT_RST);
 limit = 1000;
 while (--limit >= 0) {
  if (!(nr64_mac(XRXMAC_SW_RST) & (XRXMAC_SW_RST_REG_RS |
       XRXMAC_SW_RST_SOFT_RST)))
   break;
  udelay(100);
 }
 if (limit < 0) {
  dev_err(np->device, "Port %u RX XMAC would not reset, XRXMAC_SW_RST[%llx]\n",
   np->port,
   (unsigned long long) nr64_mac(XRXMAC_SW_RST));
  return -ENODEV;
 }

 return 0;
}
