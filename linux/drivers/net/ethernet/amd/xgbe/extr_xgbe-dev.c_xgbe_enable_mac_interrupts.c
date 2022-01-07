
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int ALL_INTERRUPTS ;
 int MAC_IER ;
 int MAC_MDIOIER ;
 int MMC_RIER ;
 int MMC_TIER ;
 int SNGLCOMPIE ;
 int TSIE ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int) ;

__attribute__((used)) static void xgbe_enable_mac_interrupts(struct xgbe_prv_data *pdata)
{
 unsigned int mac_ier = 0;


 XGMAC_SET_BITS(mac_ier, MAC_IER, TSIE, 1);

 XGMAC_IOWRITE(pdata, MAC_IER, mac_ier);


 XGMAC_IOWRITE_BITS(pdata, MMC_RIER, ALL_INTERRUPTS, 0xffffffff);
 XGMAC_IOWRITE_BITS(pdata, MMC_TIER, ALL_INTERRUPTS, 0xffffffff);


 XGMAC_IOWRITE_BITS(pdata, MAC_MDIOIER, SNGLCOMPIE, 1);
}
