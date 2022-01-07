
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac_driver {int dummy; } ;


 int GMAC_TRANSMIT_CONTROL_REG ;
 int GMAC_TX_AN_EN_B ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;

__attribute__((used)) static void hns_gmac_config_an_mode(void *mac_drv, u8 newval)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 dsaf_set_dev_bit(drv, GMAC_TRANSMIT_CONTROL_REG,
    GMAC_TX_AN_EN_B, !!newval);
}
