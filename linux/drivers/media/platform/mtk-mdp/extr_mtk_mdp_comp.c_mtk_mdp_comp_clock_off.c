
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mdp_comp {scalar_t__ larb_dev; int * clk; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int mtk_smi_larb_put (scalar_t__) ;

void mtk_mdp_comp_clock_off(struct device *dev, struct mtk_mdp_comp *comp)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
  if (IS_ERR(comp->clk[i]))
   continue;
  clk_disable_unprepare(comp->clk[i]);
 }

 if (comp->larb_dev)
  mtk_smi_larb_put(comp->larb_dev);
}
