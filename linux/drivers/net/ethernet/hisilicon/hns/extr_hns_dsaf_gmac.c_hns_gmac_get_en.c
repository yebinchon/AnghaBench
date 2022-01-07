
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int GMAC_PORT_EN_REG ;
 int GMAC_PORT_RX_EN_B ;
 int GMAC_PORT_TX_EN_B ;
 int dsaf_get_bit (int ,int ) ;
 int dsaf_read_dev (struct mac_driver*,int ) ;

__attribute__((used)) static void hns_gmac_get_en(void *mac_drv, u32 *rx, u32 *tx)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;
 u32 porten;

 porten = dsaf_read_dev(drv, GMAC_PORT_EN_REG);
 *tx = dsaf_get_bit(porten, GMAC_PORT_TX_EN_B);
 *rx = dsaf_get_bit(porten, GMAC_PORT_RX_EN_B);
}
