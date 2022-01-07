
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int XGMAC_ENABLE_TX_B ;
 int XGMAC_MAC_ENABLE_REG ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;

__attribute__((used)) static void hns_xgmac_tx_enable(struct mac_driver *drv, u32 value)
{
 dsaf_set_dev_bit(drv, XGMAC_MAC_ENABLE_REG, XGMAC_ENABLE_TX_B, !!value);
}
