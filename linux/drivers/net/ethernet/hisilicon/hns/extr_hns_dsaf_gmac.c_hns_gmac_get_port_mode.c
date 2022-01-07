
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_driver {int dummy; } ;
typedef enum hns_port_mode { ____Placeholder_hns_port_mode } hns_port_mode ;


 int GMAC_PORT_MODE_M ;
 int GMAC_PORT_MODE_REG ;
 int GMAC_PORT_MODE_S ;
 scalar_t__ dsaf_get_dev_field (struct mac_driver*,int ,int ,int ) ;

__attribute__((used)) static void hns_gmac_get_port_mode(void *mac_drv, enum hns_port_mode *port_mode)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 *port_mode = (enum hns_port_mode)dsaf_get_dev_field(
  drv, GMAC_PORT_MODE_REG, GMAC_PORT_MODE_M, GMAC_PORT_MODE_S);
}
