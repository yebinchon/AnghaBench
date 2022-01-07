
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct clk_init_data* init; } ;
struct TYPE_5__ {TYPE_3__ hw; int flags; int width; int shift; scalar_t__ reg; } ;
struct TYPE_4__ {int div; int mult; TYPE_3__ hw; } ;
struct meson_mx_mmc_host {void* cfg_div_clk; TYPE_2__ cfg_div; int controller_dev; scalar_t__ base; void* fixed_factor_clk; TYPE_1__ fixed_factor; void* parent_clk; } ;
struct clk_init_data {char const** parent_names; int num_parents; scalar_t__ flags; int * ops; void* name; } ;


 int CLK_DIVIDER_ALLOW_ZERO ;
 scalar_t__ CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ERR (void*) ;
 scalar_t__ MESON_MX_SDIO_CONF ;
 int MESON_MX_SDIO_CONF_CMD_CLK_DIV_SHIFT ;
 int MESON_MX_SDIO_CONF_CMD_CLK_DIV_WIDTH ;
 int PTR_ERR (void*) ;
 scalar_t__ WARN_ON (int ) ;
 char* __clk_get_name (void*) ;
 int clk_divider_ops ;
 int clk_fixed_factor_ops ;
 int dev_name (int ) ;
 void* devm_clk_register (int ,TYPE_3__*) ;
 void* devm_kasprintf (int ,int ,char*,int ) ;

__attribute__((used)) static int meson_mx_mmc_register_clks(struct meson_mx_mmc_host *host)
{
 struct clk_init_data init;
 const char *clk_div_parent, *clk_fixed_factor_parent;

 clk_fixed_factor_parent = __clk_get_name(host->parent_clk);
 init.name = devm_kasprintf(host->controller_dev, GFP_KERNEL,
       "%s#fixed_factor",
       dev_name(host->controller_dev));
 if (!init.name)
  return -ENOMEM;

 init.ops = &clk_fixed_factor_ops;
 init.flags = 0;
 init.parent_names = &clk_fixed_factor_parent;
 init.num_parents = 1;
 host->fixed_factor.div = 2;
 host->fixed_factor.mult = 1;
 host->fixed_factor.hw.init = &init;

 host->fixed_factor_clk = devm_clk_register(host->controller_dev,
       &host->fixed_factor.hw);
 if (WARN_ON(IS_ERR(host->fixed_factor_clk)))
  return PTR_ERR(host->fixed_factor_clk);

 clk_div_parent = __clk_get_name(host->fixed_factor_clk);
 init.name = devm_kasprintf(host->controller_dev, GFP_KERNEL,
       "%s#div", dev_name(host->controller_dev));
 if (!init.name)
  return -ENOMEM;

 init.ops = &clk_divider_ops;
 init.flags = CLK_SET_RATE_PARENT;
 init.parent_names = &clk_div_parent;
 init.num_parents = 1;
 host->cfg_div.reg = host->base + MESON_MX_SDIO_CONF;
 host->cfg_div.shift = MESON_MX_SDIO_CONF_CMD_CLK_DIV_SHIFT;
 host->cfg_div.width = MESON_MX_SDIO_CONF_CMD_CLK_DIV_WIDTH;
 host->cfg_div.hw.init = &init;
 host->cfg_div.flags = CLK_DIVIDER_ALLOW_ZERO;

 host->cfg_div_clk = devm_clk_register(host->controller_dev,
           &host->cfg_div.hw);
 if (WARN_ON(IS_ERR(host->cfg_div_clk)))
  return PTR_ERR(host->cfg_div_clk);

 return 0;
}
