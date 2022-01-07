
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm9000_plat_data {int dev_addr; int flags; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int CONFIG_OF ;
 int DM9000_PLATF_EXT_PHY ;
 int DM9000_PLATF_NO_EEPROM ;
 int ENOMEM ;
 int ENXIO ;
 struct dm9000_plat_data* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 int IS_ERR (void const*) ;
 struct dm9000_plat_data* devm_kzalloc (struct device*,int,int ) ;
 int ether_addr_copy (int ,void const*) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 void* of_get_mac_address (struct device_node*) ;

__attribute__((used)) static struct dm9000_plat_data *dm9000_parse_dt(struct device *dev)
{
 struct dm9000_plat_data *pdata;
 struct device_node *np = dev->of_node;
 const void *mac_addr;

 if (!IS_ENABLED(CONFIG_OF) || !np)
  return ERR_PTR(-ENXIO);

 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ERR_PTR(-ENOMEM);

 if (of_find_property(np, "davicom,ext-phy", ((void*)0)))
  pdata->flags |= DM9000_PLATF_EXT_PHY;
 if (of_find_property(np, "davicom,no-eeprom", ((void*)0)))
  pdata->flags |= DM9000_PLATF_NO_EEPROM;

 mac_addr = of_get_mac_address(np);
 if (!IS_ERR(mac_addr))
  ether_addr_copy(pdata->dev_addr, mac_addr);

 return pdata;
}
