
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int GMAC_PAUSE_EN_REG ;
 int GMAC_PAUSE_EN_RX_FDFC_B ;
 int GMAC_PAUSE_EN_TX_FDFC_B ;
 int dsaf_read_dev (struct mac_driver*,int ) ;
 int dsaf_set_bit (int ,int ,int) ;
 int dsaf_write_dev (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_gmac_pause_frm_cfg(void *mac_drv, u32 rx_pause_en,
       u32 tx_pause_en)
{
 u32 pause_en;
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 pause_en = dsaf_read_dev(drv, GMAC_PAUSE_EN_REG);
 dsaf_set_bit(pause_en, GMAC_PAUSE_EN_RX_FDFC_B, !!rx_pause_en);
 dsaf_set_bit(pause_en, GMAC_PAUSE_EN_TX_FDFC_B, !!tx_pause_en);
 dsaf_write_dev(drv, GMAC_PAUSE_EN_REG, pause_en);
}
