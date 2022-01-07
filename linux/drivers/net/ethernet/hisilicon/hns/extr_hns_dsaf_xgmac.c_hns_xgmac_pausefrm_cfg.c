
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int XGMAC_MAC_PAUSE_CTRL_REG ;
 int XGMAC_PAUSE_CTL_RX_B ;
 int XGMAC_PAUSE_CTL_TX_B ;
 int dsaf_read_dev (struct mac_driver*,int ) ;
 int dsaf_set_bit (int ,int ,int) ;
 int dsaf_write_dev (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_xgmac_pausefrm_cfg(void *mac_drv, u32 rx_en, u32 tx_en)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;
 u32 origin = dsaf_read_dev(drv, XGMAC_MAC_PAUSE_CTRL_REG);

 dsaf_set_bit(origin, XGMAC_PAUSE_CTL_TX_B, !!tx_en);
 dsaf_set_bit(origin, XGMAC_PAUSE_CTL_RX_B, !!rx_en);
 dsaf_write_dev(drv, XGMAC_MAC_PAUSE_CTRL_REG, origin);
}
