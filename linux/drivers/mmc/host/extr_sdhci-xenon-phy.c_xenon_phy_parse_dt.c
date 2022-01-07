
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
struct device_node {int dummy; } ;


 int of_property_read_string (struct device_node*,char*,char const**) ;
 int xenon_add_phy (struct device_node*,struct sdhci_host*,char const*) ;

int xenon_phy_parse_dt(struct device_node *np, struct sdhci_host *host)
{
 const char *phy_type = ((void*)0);

 if (!of_property_read_string(np, "marvell,xenon-phy-type", &phy_type))
  return xenon_add_phy(np, host, phy_type);

 return xenon_add_phy(np, host, "emmc 5.1 phy");
}
