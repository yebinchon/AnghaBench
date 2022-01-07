
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g12a_mdio_mux {struct clk* pll; scalar_t__ regs; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct g12a_ephy_pll {TYPE_1__ hw; scalar_t__ base; } ;
struct device {int dummy; } ;
struct clk_mux {int shift; int mask; TYPE_1__ hw; scalar_t__ reg; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; scalar_t__ flags; int * ops; } ;
struct clk {int dummy; } ;
typedef int in_name ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 scalar_t__ ETH_PLL_CTL0 ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PLL_CTL0_SEL ;
 int PLL_MUX_NUM_PARENT ;
 int PTR_ERR (struct clk*) ;
 char* __clk_get_name (struct clk*) ;
 int __ffs (int) ;
 int clk_mux_ro_ops ;
 int dev_err (struct device*,char*,...) ;
 struct g12a_mdio_mux* dev_get_drvdata (struct device*) ;
 int dev_name (struct device*) ;
 struct clk* devm_clk_get (struct device*,char*) ;
 struct clk* devm_clk_register (struct device*,TYPE_1__*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int g12a_ephy_pll_ops ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int g12a_ephy_glue_clk_register(struct device *dev)
{
 struct g12a_mdio_mux *priv = dev_get_drvdata(dev);
 const char *parent_names[PLL_MUX_NUM_PARENT];
 struct clk_init_data init;
 struct g12a_ephy_pll *pll;
 struct clk_mux *mux;
 struct clk *clk;
 char *name;
 int i;


 for (i = 0; i < PLL_MUX_NUM_PARENT; i++) {
  char in_name[8];

  snprintf(in_name, sizeof(in_name), "clkin%d", i);
  clk = devm_clk_get(dev, in_name);
  if (IS_ERR(clk)) {
   if (PTR_ERR(clk) != -EPROBE_DEFER)
    dev_err(dev, "Missing clock %s\n", in_name);
   return PTR_ERR(clk);
  }

  parent_names[i] = __clk_get_name(clk);
 }


 mux = devm_kzalloc(dev, sizeof(*mux), GFP_KERNEL);
 if (!mux)
  return -ENOMEM;

 name = kasprintf(GFP_KERNEL, "%s#mux", dev_name(dev));
 if (!name)
  return -ENOMEM;

 init.name = name;
 init.ops = &clk_mux_ro_ops;
 init.flags = 0;
 init.parent_names = parent_names;
 init.num_parents = PLL_MUX_NUM_PARENT;

 mux->reg = priv->regs + ETH_PLL_CTL0;
 mux->shift = __ffs(PLL_CTL0_SEL);
 mux->mask = PLL_CTL0_SEL >> mux->shift;
 mux->hw.init = &init;

 clk = devm_clk_register(dev, &mux->hw);
 kfree(name);
 if (IS_ERR(clk)) {
  dev_err(dev, "failed to register input mux\n");
  return PTR_ERR(clk);
 }


 pll = devm_kzalloc(dev, sizeof(*pll), GFP_KERNEL);
 if (!pll)
  return -ENOMEM;

 name = kasprintf(GFP_KERNEL, "%s#pll", dev_name(dev));
 if (!name)
  return -ENOMEM;

 init.name = name;
 init.ops = &g12a_ephy_pll_ops;
 init.flags = 0;
 parent_names[0] = __clk_get_name(clk);
 init.parent_names = parent_names;
 init.num_parents = 1;

 pll->base = priv->regs;
 pll->hw.init = &init;

 clk = devm_clk_register(dev, &pll->hw);
 kfree(name);
 if (IS_ERR(clk)) {
  dev_err(dev, "failed to register input mux\n");
  return PTR_ERR(clk);
 }

 priv->pll = clk;

 return 0;
}
