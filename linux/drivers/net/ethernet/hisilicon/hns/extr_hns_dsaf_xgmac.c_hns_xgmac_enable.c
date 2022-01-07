
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_driver {int dev; } ;
typedef enum mac_commom_mode { ____Placeholder_mac_commom_mode } mac_commom_mode ;


 int HNS_XGMAC_NO_LF_RF_INSERT ;
 int MAC_COMM_MODE_RX ;
 int MAC_COMM_MODE_RX_AND_TX ;
 int MAC_COMM_MODE_TX ;
 int dev_err (int ,char*,int) ;
 int hns_xgmac_lf_rf_insert (struct mac_driver*,int ) ;
 int hns_xgmac_rx_enable (struct mac_driver*,int) ;
 int hns_xgmac_tx_enable (struct mac_driver*,int) ;

__attribute__((used)) static void hns_xgmac_enable(void *mac_drv, enum mac_commom_mode mode)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 hns_xgmac_lf_rf_insert(drv, HNS_XGMAC_NO_LF_RF_INSERT);


 if (mode == MAC_COMM_MODE_TX) {
  hns_xgmac_tx_enable(drv, 1);
 } else if (mode == MAC_COMM_MODE_RX) {
  hns_xgmac_rx_enable(drv, 1);
 } else if (mode == MAC_COMM_MODE_RX_AND_TX) {
  hns_xgmac_tx_enable(drv, 1);
  hns_xgmac_rx_enable(drv, 1);
 } else {
  dev_err(drv->dev, "error mac mode:%d\n", mode);
 }
}
