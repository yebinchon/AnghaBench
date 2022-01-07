
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int XGMAC_LF_RF_INSERT_M ;
 int XGMAC_LF_RF_INSERT_S ;
 int XGMAC_MAC_TX_LF_RF_CONTROL_REG ;
 int XGMAC_RF_TX_EN_B ;
 int XGMAC_UNIDIR_EN_B ;
 int dsaf_set_bit (int ,int ,int) ;
 int dsaf_set_field (int ,int ,int ,int ) ;
 int dsaf_write_dev (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_xgmac_lf_rf_control_init(struct mac_driver *mac_drv)
{
 u32 val = 0;

 dsaf_set_bit(val, XGMAC_UNIDIR_EN_B, 0);
 dsaf_set_bit(val, XGMAC_RF_TX_EN_B, 1);
 dsaf_set_field(val, XGMAC_LF_RF_INSERT_M, XGMAC_LF_RF_INSERT_S, 0);
 dsaf_write_dev(mac_drv, XGMAC_MAC_TX_LF_RF_CONTROL_REG, val);
}
