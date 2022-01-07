
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int of_node; } ;


 int ENOENT ;
 int cpsw_am33xx_cm_get_macid (struct device*,int,int,int *) ;
 int davinci_emac_3517_get_macid (struct device*,int,int,int *) ;
 int dev_info (struct device*,char*) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 scalar_t__ of_machine_is_compatible (char*) ;

int ti_cm_get_macid(struct device *dev, int slave, u8 *mac_addr)
{
 if (of_machine_is_compatible("ti,dm8148"))
  return cpsw_am33xx_cm_get_macid(dev, 0x630, slave, mac_addr);

 if (of_machine_is_compatible("ti,am33xx"))
  return cpsw_am33xx_cm_get_macid(dev, 0x630, slave, mac_addr);

 if (of_device_is_compatible(dev->of_node, "ti,am3517-emac"))
  return davinci_emac_3517_get_macid(dev, 0x110, slave, mac_addr);

 if (of_device_is_compatible(dev->of_node, "ti,dm816-emac"))
  return cpsw_am33xx_cm_get_macid(dev, 0x30, slave, mac_addr);

 if (of_machine_is_compatible("ti,am43"))
  return cpsw_am33xx_cm_get_macid(dev, 0x630, slave, mac_addr);

 if (of_machine_is_compatible("ti,dra7"))
  return davinci_emac_3517_get_macid(dev, 0x514, slave, mac_addr);

 dev_info(dev, "incompatible machine/device type for reading mac address\n");
 return -ENOENT;
}
