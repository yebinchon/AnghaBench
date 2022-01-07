
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ clk_num; int * clks; } ;
struct cam_clk_provider {scalar_t__ num_clocks; TYPE_3__ clk_data; int of_node; int * clks; struct cam_clk* camclk; } ;
struct fimc_md {TYPE_2__* camclk; TYPE_1__* pdev; struct cam_clk_provider clk_provider; } ;
struct device {int of_node; } ;
struct clk_init_data {char const** parent_names; int num_parents; int name; int flags; int * ops; } ;
struct TYPE_8__ {struct clk_init_data* init; } ;
struct cam_clk {TYPE_4__ hw; struct fimc_md* fmd; } ;
struct TYPE_6__ {int clock; } ;
struct TYPE_5__ {struct device dev; } ;


 int CLK_SET_RATE_PARENT ;
 int FIMC_MAX_CAMCLKS ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 char* __clk_get_name (int ) ;
 int cam_clk_ops ;
 int clk_register (int *,TYPE_4__*) ;
 int dev_err (struct device*,char*,int ,int) ;
 int dev_warn (struct device*,char*) ;
 int fimc_md_unregister_clk_provider (struct fimc_md*) ;
 int of_clk_add_provider (int ,int ,TYPE_3__*) ;
 int of_clk_src_onecell_get ;
 int of_property_read_string_index (int ,char*,int,int *) ;

__attribute__((used)) static int fimc_md_register_clk_provider(struct fimc_md *fmd)
{
 struct cam_clk_provider *cp = &fmd->clk_provider;
 struct device *dev = &fmd->pdev->dev;
 int i, ret;

 for (i = 0; i < FIMC_MAX_CAMCLKS; i++) {
  struct cam_clk *camclk = &cp->camclk[i];
  struct clk_init_data init;
  const char *p_name;

  ret = of_property_read_string_index(dev->of_node,
     "clock-output-names", i, &init.name);
  if (ret < 0)
   break;

  p_name = __clk_get_name(fmd->camclk[i].clock);


  init.parent_names = &p_name;
  init.num_parents = 1;
  init.ops = &cam_clk_ops;
  init.flags = CLK_SET_RATE_PARENT;
  camclk->hw.init = &init;
  camclk->fmd = fmd;

  cp->clks[i] = clk_register(((void*)0), &camclk->hw);
  if (IS_ERR(cp->clks[i])) {
   dev_err(dev, "failed to register clock: %s (%ld)\n",
     init.name, PTR_ERR(cp->clks[i]));
   ret = PTR_ERR(cp->clks[i]);
   goto err;
  }
  cp->num_clocks++;
 }

 if (cp->num_clocks == 0) {
  dev_warn(dev, "clk provider not registered\n");
  return 0;
 }

 cp->clk_data.clks = cp->clks;
 cp->clk_data.clk_num = cp->num_clocks;
 cp->of_node = dev->of_node;
 ret = of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
      &cp->clk_data);
 if (ret == 0)
  return 0;
err:
 fimc_md_unregister_clk_provider(fmd);
 return ret;
}
