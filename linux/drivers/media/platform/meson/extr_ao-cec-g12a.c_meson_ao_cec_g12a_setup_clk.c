
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct clk_init_data* init; } ;
struct meson_ao_cec_g12a_dualdiv_clk {TYPE_2__ hw; int regmap; } ;
struct meson_ao_cec_g12a_device {struct clk* core; int regmap; int oscin; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; scalar_t__ flags; int * ops; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 char* __clk_get_name (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 struct clk* devm_clk_register (struct device*,TYPE_2__*) ;
 struct meson_ao_cec_g12a_dualdiv_clk* devm_kzalloc (struct device*,int,int ) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char*) ;
 int meson_ao_cec_g12a_dualdiv_clk_ops ;

__attribute__((used)) static int meson_ao_cec_g12a_setup_clk(struct meson_ao_cec_g12a_device *ao_cec)
{
 struct meson_ao_cec_g12a_dualdiv_clk *dualdiv_clk;
 struct device *dev = &ao_cec->pdev->dev;
 struct clk_init_data init;
 const char *parent_name;
 struct clk *clk;
 char *name;

 dualdiv_clk = devm_kzalloc(dev, sizeof(*dualdiv_clk), GFP_KERNEL);
 if (!dualdiv_clk)
  return -ENOMEM;

 name = kasprintf(GFP_KERNEL, "%s#dualdiv_clk", dev_name(dev));
 if (!name)
  return -ENOMEM;

 parent_name = __clk_get_name(ao_cec->oscin);

 init.name = name;
 init.ops = &meson_ao_cec_g12a_dualdiv_clk_ops;
 init.flags = 0;
 init.parent_names = &parent_name;
 init.num_parents = 1;
 dualdiv_clk->regmap = ao_cec->regmap;
 dualdiv_clk->hw.init = &init;

 clk = devm_clk_register(dev, &dualdiv_clk->hw);
 kfree(name);
 if (IS_ERR(clk)) {
  dev_err(dev, "failed to register clock\n");
  return PTR_ERR(clk);
 }

 ao_cec->core = clk;

 return 0;
}
