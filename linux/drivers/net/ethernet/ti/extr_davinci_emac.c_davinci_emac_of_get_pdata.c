
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {struct emac_platform_data* platform_data; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct emac_platform_data* data; } ;
struct emac_priv {int phy_node; } ;
struct emac_platform_data {int hw_ram_addr; int version; int interrupt_disable; int interrupt_enable; int * phy_id; int no_bd_ram; int rmii_en; int ctrl_ram_size; int ctrl_ram_offset; int ctrl_mod_reg_offset; int ctrl_reg_offset; int mac_addr; } ;
struct device_node {int dummy; } ;


 int CONFIG_OF ;
 int EMAC_VERSION_2 ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 int IS_ERR (int const*) ;
 int davinci_emac_of_match ;
 struct emac_platform_data* dev_get_platdata (TYPE_1__*) ;
 struct emac_platform_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int ether_addr_copy (int ,int const*) ;
 int is_valid_ether_addr (int ) ;
 int * of_get_mac_address (struct device_node*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int of_node_get (struct device_node*) ;
 int of_parse_phandle (struct device_node*,char*,int ) ;
 int of_phy_is_fixed_link (struct device_node*) ;
 scalar_t__ of_phy_register_fixed_link (struct device_node*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int of_property_read_u8 (struct device_node*,char*,int *) ;

__attribute__((used)) static struct emac_platform_data *
davinci_emac_of_get_pdata(struct platform_device *pdev, struct emac_priv *priv)
{
 struct device_node *np;
 const struct of_device_id *match;
 const struct emac_platform_data *auxdata;
 struct emac_platform_data *pdata = ((void*)0);
 const u8 *mac_addr;

 if (!IS_ENABLED(CONFIG_OF) || !pdev->dev.of_node)
  return dev_get_platdata(&pdev->dev);

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);

 np = pdev->dev.of_node;
 pdata->version = EMAC_VERSION_2;

 if (!is_valid_ether_addr(pdata->mac_addr)) {
  mac_addr = of_get_mac_address(np);
  if (!IS_ERR(mac_addr))
   ether_addr_copy(pdata->mac_addr, mac_addr);
 }

 of_property_read_u32(np, "ti,davinci-ctrl-reg-offset",
        &pdata->ctrl_reg_offset);

 of_property_read_u32(np, "ti,davinci-ctrl-mod-reg-offset",
        &pdata->ctrl_mod_reg_offset);

 of_property_read_u32(np, "ti,davinci-ctrl-ram-offset",
        &pdata->ctrl_ram_offset);

 of_property_read_u32(np, "ti,davinci-ctrl-ram-size",
        &pdata->ctrl_ram_size);

 of_property_read_u8(np, "ti,davinci-rmii-en", &pdata->rmii_en);

 pdata->no_bd_ram = of_property_read_bool(np, "ti,davinci-no-bd-ram");

 priv->phy_node = of_parse_phandle(np, "phy-handle", 0);
 if (!priv->phy_node) {
  if (!of_phy_is_fixed_link(np))
   pdata->phy_id = ((void*)0);
  else if (of_phy_register_fixed_link(np) >= 0)
   priv->phy_node = of_node_get(np);
 }

 auxdata = pdev->dev.platform_data;
 if (auxdata) {
  pdata->interrupt_enable = auxdata->interrupt_enable;
  pdata->interrupt_disable = auxdata->interrupt_disable;
 }

 match = of_match_device(davinci_emac_of_match, &pdev->dev);
 if (match && match->data) {
  auxdata = match->data;
  pdata->version = auxdata->version;
  pdata->hw_ram_addr = auxdata->hw_ram_addr;
 }

 return pdata;
}
