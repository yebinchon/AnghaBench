
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xgbe_prv_data {int dummy; } ;


 int MAC_MACA0HR ;
 int MAC_MACA0LR ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;

__attribute__((used)) static int xgbe_set_mac_address(struct xgbe_prv_data *pdata, u8 *addr)
{
 unsigned int mac_addr_hi, mac_addr_lo;

 mac_addr_hi = (addr[5] << 8) | (addr[4] << 0);
 mac_addr_lo = (addr[3] << 24) | (addr[2] << 16) |
        (addr[1] << 8) | (addr[0] << 0);

 XGMAC_IOWRITE(pdata, MAC_MACA0HR, mac_addr_hi);
 XGMAC_IOWRITE(pdata, MAC_MACA0LR, mac_addr_lo);

 return 0;
}
