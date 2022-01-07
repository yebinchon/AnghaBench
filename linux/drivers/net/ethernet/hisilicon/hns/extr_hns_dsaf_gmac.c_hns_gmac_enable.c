
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_driver {int dummy; } ;
typedef enum mac_commom_mode { ____Placeholder_mac_commom_mode } mac_commom_mode ;


 int GMAC_PCS_RX_EN_REG ;
 int GMAC_PORT_EN_REG ;
 int GMAC_PORT_RX_EN_B ;
 int GMAC_PORT_TX_EN_B ;
 int MAC_COMM_MODE_RX ;
 int MAC_COMM_MODE_RX_AND_TX ;
 int MAC_COMM_MODE_TX ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;

__attribute__((used)) static void hns_gmac_enable(void *mac_drv, enum mac_commom_mode mode)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;


 if (mode == MAC_COMM_MODE_TX || mode == MAC_COMM_MODE_RX_AND_TX)
  dsaf_set_dev_bit(drv, GMAC_PORT_EN_REG, GMAC_PORT_TX_EN_B, 1);

 if (mode == MAC_COMM_MODE_RX || mode == MAC_COMM_MODE_RX_AND_TX) {

  dsaf_set_dev_bit(drv, GMAC_PCS_RX_EN_REG, 0, 0);
  dsaf_set_dev_bit(drv, GMAC_PORT_EN_REG, GMAC_PORT_RX_EN_B, 1);
 }
}
