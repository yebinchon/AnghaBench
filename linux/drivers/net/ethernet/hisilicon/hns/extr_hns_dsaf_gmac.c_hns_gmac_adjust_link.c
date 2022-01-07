
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int mac_id; int dev; } ;
typedef enum mac_speed { ____Placeholder_mac_speed } mac_speed ;


 int EINVAL ;
 int GMAC_DUPLEX_TYPE_B ;
 int GMAC_DUPLEX_TYPE_REG ;
 int GMAC_PORT_MODE_M ;
 int GMAC_PORT_MODE_REG ;
 int GMAC_PORT_MODE_S ;



 int dev_err (int ,char*,int,int ) ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;
 int dsaf_set_dev_field (struct mac_driver*,int ,int ,int ,int) ;

__attribute__((used)) static int hns_gmac_adjust_link(void *mac_drv, enum mac_speed speed,
    u32 full_duplex)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 dsaf_set_dev_bit(drv, GMAC_DUPLEX_TYPE_REG,
    GMAC_DUPLEX_TYPE_B, !!full_duplex);

 switch (speed) {
 case 130:
  dsaf_set_dev_field(
   drv, GMAC_PORT_MODE_REG,
   GMAC_PORT_MODE_M, GMAC_PORT_MODE_S, 0x6);
  break;
 case 129:
  dsaf_set_dev_field(
   drv, GMAC_PORT_MODE_REG,
   GMAC_PORT_MODE_M, GMAC_PORT_MODE_S, 0x7);
  break;
 case 128:
  dsaf_set_dev_field(
   drv, GMAC_PORT_MODE_REG,
   GMAC_PORT_MODE_M, GMAC_PORT_MODE_S, 0x8);
  break;
 default:
  dev_err(drv->dev,
   "hns_gmac_adjust_link fail, speed%d mac%d\n",
   speed, drv->mac_id);
  return -EINVAL;
 }

 return 0;
}
