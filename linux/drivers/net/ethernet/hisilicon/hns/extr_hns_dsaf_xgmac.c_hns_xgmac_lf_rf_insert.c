
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int XGMAC_LF_RF_INSERT_M ;
 int XGMAC_LF_RF_INSERT_S ;
 int XGMAC_MAC_TX_LF_RF_CONTROL_REG ;
 int dsaf_set_dev_field (struct mac_driver*,int ,int ,int ,int ) ;

__attribute__((used)) static void hns_xgmac_lf_rf_insert(struct mac_driver *mac_drv, u32 mode)
{
 dsaf_set_dev_field(mac_drv, XGMAC_MAC_TX_LF_RF_CONTROL_REG,
      XGMAC_LF_RF_INSERT_M, XGMAC_LF_RF_INSERT_S, mode);
}
