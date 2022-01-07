
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int port; int device; } ;


 int BRXMAC_SW_RST ;
 int BRXMAC_SW_RST_RESET ;
 int ENODEV ;
 int dev_err (int ,char*,int ,unsigned long long) ;
 int nr64_mac (int ) ;
 int nw64_mac (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int niu_reset_rx_bmac(struct niu *np)
{
 int limit;

 nw64_mac(BRXMAC_SW_RST, BRXMAC_SW_RST_RESET);
 limit = 1000;
 while (--limit >= 0) {
  if (!(nr64_mac(BRXMAC_SW_RST) & BRXMAC_SW_RST_RESET))
   break;
  udelay(100);
 }
 if (limit < 0) {
  dev_err(np->device, "Port %u RX BMAC would not reset, BRXMAC_SW_RST[%llx]\n",
   np->port,
   (unsigned long long) nr64_mac(BRXMAC_SW_RST));
  return -ENODEV;
 }

 return 0;
}
