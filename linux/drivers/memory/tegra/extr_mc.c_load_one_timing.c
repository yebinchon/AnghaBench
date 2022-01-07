
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_mc_timing {int emem_data; int rate; } ;
struct tegra_mc {int dev; TYPE_1__* soc; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int num_emem_regs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,struct device_node*) ;
 int devm_kcalloc (int ,int ,int,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int of_property_read_u32_array (struct device_node*,char*,int ,int ) ;

__attribute__((used)) static int load_one_timing(struct tegra_mc *mc,
      struct tegra_mc_timing *timing,
      struct device_node *node)
{
 int err;
 u32 tmp;

 err = of_property_read_u32(node, "clock-frequency", &tmp);
 if (err) {
  dev_err(mc->dev,
   "timing %pOFn: failed to read rate\n", node);
  return err;
 }

 timing->rate = tmp;
 timing->emem_data = devm_kcalloc(mc->dev, mc->soc->num_emem_regs,
      sizeof(u32), GFP_KERNEL);
 if (!timing->emem_data)
  return -ENOMEM;

 err = of_property_read_u32_array(node, "nvidia,emem-configuration",
      timing->emem_data,
      mc->soc->num_emem_regs);
 if (err) {
  dev_err(mc->dev,
   "timing %pOFn: failed to read EMEM configuration\n",
   node);
  return err;
 }

 return 0;
}
