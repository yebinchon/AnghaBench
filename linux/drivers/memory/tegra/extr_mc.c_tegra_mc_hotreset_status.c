
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_mc_reset_ops {int (* reset_status ) (struct tegra_mc*,struct tegra_mc_reset const*) ;} ;
struct tegra_mc_reset {int dummy; } ;
struct tegra_mc {TYPE_1__* soc; } ;
struct reset_controller_dev {int dummy; } ;
struct TYPE_2__ {struct tegra_mc_reset_ops* reset_ops; } ;


 int ENODEV ;
 struct tegra_mc* reset_to_mc (struct reset_controller_dev*) ;
 int stub1 (struct tegra_mc*,struct tegra_mc_reset const*) ;
 struct tegra_mc_reset* tegra_mc_reset_find (struct tegra_mc*,unsigned long) ;

__attribute__((used)) static int tegra_mc_hotreset_status(struct reset_controller_dev *rcdev,
        unsigned long id)
{
 struct tegra_mc *mc = reset_to_mc(rcdev);
 const struct tegra_mc_reset_ops *rst_ops;
 const struct tegra_mc_reset *rst;

 rst = tegra_mc_reset_find(mc, id);
 if (!rst)
  return -ENODEV;

 rst_ops = mc->soc->reset_ops;
 if (!rst_ops)
  return -ENODEV;

 return rst_ops->reset_status(mc, rst);
}
