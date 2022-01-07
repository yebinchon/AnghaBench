
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;


 scalar_t__ MAC_MACA0HR ;
 scalar_t__ MAC_MACA0LR ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int xlgmac_set_mac_address(struct xlgmac_pdata *pdata, u8 *addr)
{
 unsigned int mac_addr_hi, mac_addr_lo;

 mac_addr_hi = (addr[5] << 8) | (addr[4] << 0);
 mac_addr_lo = (addr[3] << 24) | (addr[2] << 16) |
        (addr[1] << 8) | (addr[0] << 0);

 writel(mac_addr_hi, pdata->mac_regs + MAC_MACA0HR);
 writel(mac_addr_lo, pdata->mac_regs + MAC_MACA0LR);

 return 0;
}
