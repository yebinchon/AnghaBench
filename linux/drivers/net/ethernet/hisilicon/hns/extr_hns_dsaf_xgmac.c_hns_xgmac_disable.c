
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_driver {int dummy; } ;
typedef enum mac_commom_mode { ____Placeholder_mac_commom_mode } mac_commom_mode ;


 int HNS_XGMAC_LF_INSERT ;
 int MAC_COMM_MODE_RX ;
 int MAC_COMM_MODE_RX_AND_TX ;
 int MAC_COMM_MODE_TX ;
 int hns_xgmac_lf_rf_insert (struct mac_driver*,int ) ;
 int hns_xgmac_rx_enable (struct mac_driver*,int ) ;
 int hns_xgmac_tx_enable (struct mac_driver*,int ) ;

__attribute__((used)) static void hns_xgmac_disable(void *mac_drv, enum mac_commom_mode mode)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 if (mode == MAC_COMM_MODE_TX) {
  hns_xgmac_tx_enable(drv, 0);
 } else if (mode == MAC_COMM_MODE_RX) {
  hns_xgmac_rx_enable(drv, 0);
 } else if (mode == MAC_COMM_MODE_RX_AND_TX) {
  hns_xgmac_tx_enable(drv, 0);
  hns_xgmac_rx_enable(drv, 0);
 }
 hns_xgmac_lf_rf_insert(drv, HNS_XGMAC_LF_INSERT);
}
