
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mediatek_dwmac_variant {int num_clks; int * clk_list; } ;
struct mediatek_dwmac_plat_data {TYPE_1__* clks; int dev; struct mediatek_dwmac_variant* variant; } ;
struct TYPE_3__ {int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_clk_bulk_get (int ,int,TYPE_1__*) ;
 TYPE_1__* devm_kcalloc (int ,int,int,int ) ;

__attribute__((used)) static int mediatek_dwmac_clk_init(struct mediatek_dwmac_plat_data *plat)
{
 const struct mediatek_dwmac_variant *variant = plat->variant;
 int i, num = variant->num_clks;

 plat->clks = devm_kcalloc(plat->dev, num, sizeof(*plat->clks), GFP_KERNEL);
 if (!plat->clks)
  return -ENOMEM;

 for (i = 0; i < num; i++)
  plat->clks[i].id = variant->clk_list[i];

 return devm_clk_bulk_get(plat->dev, num, plat->clks);
}
