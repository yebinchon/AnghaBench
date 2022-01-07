
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_driver {int dummy; } ;
typedef enum hns_gmac_duplex_mdoe { ____Placeholder_hns_gmac_duplex_mdoe } hns_gmac_duplex_mdoe ;


 int GMAC_DUPLEX_TYPE_B ;
 int GMAC_DUPLEX_TYPE_REG ;
 scalar_t__ dsaf_get_dev_bit (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_gmac_get_duplex_type(void *mac_drv,
         enum hns_gmac_duplex_mdoe *duplex_mode)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 *duplex_mode = (enum hns_gmac_duplex_mdoe)dsaf_get_dev_bit(
  drv, GMAC_DUPLEX_TYPE_REG, GMAC_DUPLEX_TYPE_B);
}
