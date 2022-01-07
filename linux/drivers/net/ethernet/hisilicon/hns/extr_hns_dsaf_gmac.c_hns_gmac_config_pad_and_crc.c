
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mac_driver {int dummy; } ;


 int GMAC_TRANSMIT_CONTROL_REG ;
 int GMAC_TX_CRC_ADD_B ;
 int GMAC_TX_PAD_EN_B ;
 int dsaf_read_dev (struct mac_driver*,int ) ;
 int dsaf_set_bit (int ,int ,int) ;
 int dsaf_write_dev (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_gmac_config_pad_and_crc(void *mac_drv, u8 newval)
{
 u32 tx_ctrl;
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 tx_ctrl = dsaf_read_dev(drv, GMAC_TRANSMIT_CONTROL_REG);
 dsaf_set_bit(tx_ctrl, GMAC_TX_PAD_EN_B, !!newval);
 dsaf_set_bit(tx_ctrl, GMAC_TX_CRC_ADD_B, !!newval);
 dsaf_write_dev(drv, GMAC_TRANSMIT_CONTROL_REG, tx_ctrl);
}
