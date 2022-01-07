
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct isc_device {TYPE_1__* dev; struct isc_clk* isc_clks; struct regmap* regmap; } ;
struct TYPE_5__ {struct clk_init_data* init; } ;
struct isc_clk {unsigned int id; int clk; TYPE_3__ hw; int lock; TYPE_1__* dev; struct regmap* regmap; } ;
struct device_node {char* name; } ;
struct clk_init_data {char const** parent_names; int num_parents; char const* name; int flags; int * ops; } ;
struct TYPE_4__ {struct device_node* of_node; } ;


 int CLK_SET_PARENT_GATE ;
 int CLK_SET_RATE_GATE ;
 int EINVAL ;
 unsigned int ISC_ISPCK ;
 unsigned int ISC_MCK ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_register (TYPE_1__*,TYPE_3__*) ;
 int dev_err (TYPE_1__*,char*,char const*) ;
 int isc_clk_ops ;
 int of_clk_add_provider (struct device_node*,int ,int ) ;
 int of_clk_get_parent_count (struct device_node*) ;
 int of_clk_parent_fill (struct device_node*,char const**,int) ;
 int of_clk_src_simple_get ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int isc_clk_register(struct isc_device *isc, unsigned int id)
{
 struct regmap *regmap = isc->regmap;
 struct device_node *np = isc->dev->of_node;
 struct isc_clk *isc_clk;
 struct clk_init_data init;
 const char *clk_name = np->name;
 const char *parent_names[3];
 int num_parents;

 num_parents = of_clk_get_parent_count(np);
 if (num_parents < 1 || num_parents > 3)
  return -EINVAL;

 if (num_parents > 2 && id == ISC_ISPCK)
  num_parents = 2;

 of_clk_parent_fill(np, parent_names, num_parents);

 if (id == ISC_MCK)
  of_property_read_string(np, "clock-output-names", &clk_name);
 else
  clk_name = "isc-ispck";

 init.parent_names = parent_names;
 init.num_parents = num_parents;
 init.name = clk_name;
 init.ops = &isc_clk_ops;
 init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE;

 isc_clk = &isc->isc_clks[id];
 isc_clk->hw.init = &init;
 isc_clk->regmap = regmap;
 isc_clk->id = id;
 isc_clk->dev = isc->dev;
 spin_lock_init(&isc_clk->lock);

 isc_clk->clk = clk_register(isc->dev, &isc_clk->hw);
 if (IS_ERR(isc_clk->clk)) {
  dev_err(isc->dev, "%s: clock register fail\n", clk_name);
  return PTR_ERR(isc_clk->clk);
 } else if (id == ISC_MCK)
  of_clk_add_provider(np, of_clk_src_simple_get, isc_clk->clk);

 return 0;
}
