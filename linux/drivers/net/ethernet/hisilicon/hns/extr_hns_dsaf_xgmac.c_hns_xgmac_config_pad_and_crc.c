
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mac_driver {int dummy; } ;


 int XGMAC_CTL_RX_FCS_B ;
 int XGMAC_CTL_TX_FCS_B ;
 int XGMAC_CTL_TX_PAD_B ;
 int XGMAC_MAC_CONTROL_REG ;
 int dsaf_read_dev (struct mac_driver*,int ) ;
 int dsaf_set_bit (int ,int ,int) ;
 int dsaf_write_dev (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_xgmac_config_pad_and_crc(void *mac_drv, u8 newval)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;
 u32 origin = dsaf_read_dev(drv, XGMAC_MAC_CONTROL_REG);

 dsaf_set_bit(origin, XGMAC_CTL_TX_PAD_B, !!newval);
 dsaf_set_bit(origin, XGMAC_CTL_TX_FCS_B, !!newval);
 dsaf_set_bit(origin, XGMAC_CTL_RX_FCS_B, !!newval);
 dsaf_write_dev(drv, XGMAC_MAC_CONTROL_REG, origin);
}
