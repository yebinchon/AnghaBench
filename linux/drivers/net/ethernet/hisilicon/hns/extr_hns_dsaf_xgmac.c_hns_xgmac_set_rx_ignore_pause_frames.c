
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int XGMAC_MAC_PAUSE_CTRL_REG ;
 int XGMAC_PAUSE_CTL_RX_B ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;

__attribute__((used)) static void hns_xgmac_set_rx_ignore_pause_frames(void *mac_drv, u32 enable)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 dsaf_set_dev_bit(drv, XGMAC_MAC_PAUSE_CTRL_REG,
    XGMAC_PAUSE_CTL_RX_B, !!enable);
}
