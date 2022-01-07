
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int GMAC_TRANSMIT_CONTROL_REG ;
 int GMAC_TX_AN_EN_B ;
 int dsaf_get_dev_bit (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_gmac_autoneg_stat(void *mac_drv, u32 *enable)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 *enable = dsaf_get_dev_bit(drv, GMAC_TRANSMIT_CONTROL_REG,
       GMAC_TX_AN_EN_B);
}
