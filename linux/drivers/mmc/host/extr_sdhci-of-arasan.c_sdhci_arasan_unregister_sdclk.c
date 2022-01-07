
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int of_clk_del_provider (struct device_node*) ;
 int of_find_property (struct device_node*,char*,int *) ;

__attribute__((used)) static void sdhci_arasan_unregister_sdclk(struct device *dev)
{
 struct device_node *np = dev->of_node;

 if (!of_find_property(np, "#clock-cells", ((void*)0)))
  return;

 of_clk_del_provider(dev->of_node);
}
