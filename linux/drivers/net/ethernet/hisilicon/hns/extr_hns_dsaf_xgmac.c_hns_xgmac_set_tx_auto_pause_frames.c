
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mac_driver {int dummy; } ;


 int XGMAC_MAC_PAUSE_CTRL_REG ;
 int XGMAC_MAC_PAUSE_TIME_REG ;
 int XGMAC_PAUSE_CTL_TX_B ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;
 int dsaf_write_dev (struct mac_driver*,int ,scalar_t__) ;

__attribute__((used)) static void hns_xgmac_set_tx_auto_pause_frames(void *mac_drv, u16 enable)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 dsaf_set_dev_bit(drv, XGMAC_MAC_PAUSE_CTRL_REG,
    XGMAC_PAUSE_CTL_TX_B, !!enable);


 if (enable)
  dsaf_write_dev(drv, XGMAC_MAC_PAUSE_TIME_REG, enable);
}
