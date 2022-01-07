
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct clk_init_data* init; } ;
struct sdhci_arasan_data {int sdcardclk; TYPE_1__ sdcardclk_hw; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct clk_init_data {char const** parent_names; int num_parents; int * ops; int flags; int name; } ;
struct clk {int dummy; } ;


 int CLK_GET_RATE_NOCACHE ;
 char* __clk_get_name (struct clk*) ;
 int arasan_sdcardclk_ops ;
 int dev_err (struct device*,char*) ;
 int devm_clk_register (struct device*,TYPE_1__*) ;
 int of_clk_add_provider (struct device_node*,int ,int ) ;
 int of_clk_src_simple_get ;
 int of_find_property (struct device_node*,char*,int *) ;
 int of_property_read_string_index (struct device_node*,char*,int ,int *) ;

__attribute__((used)) static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
           struct clk *clk_xin,
           struct device *dev)
{
 struct device_node *np = dev->of_node;
 struct clk_init_data sdcardclk_init;
 const char *parent_clk_name;
 int ret;


 if (!of_find_property(np, "#clock-cells", ((void*)0)))
  return 0;

 ret = of_property_read_string_index(np, "clock-output-names", 0,
         &sdcardclk_init.name);
 if (ret) {
  dev_err(dev, "DT has #clock-cells but no clock-output-names\n");
  return ret;
 }

 parent_clk_name = __clk_get_name(clk_xin);
 sdcardclk_init.parent_names = &parent_clk_name;
 sdcardclk_init.num_parents = 1;
 sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
 sdcardclk_init.ops = &arasan_sdcardclk_ops;

 sdhci_arasan->sdcardclk_hw.init = &sdcardclk_init;
 sdhci_arasan->sdcardclk =
  devm_clk_register(dev, &sdhci_arasan->sdcardclk_hw);
 sdhci_arasan->sdcardclk_hw.init = ((void*)0);

 ret = of_clk_add_provider(np, of_clk_src_simple_get,
      sdhci_arasan->sdcardclk);
 if (ret)
  dev_err(dev, "Failed to add clock provider\n");

 return ret;
}
