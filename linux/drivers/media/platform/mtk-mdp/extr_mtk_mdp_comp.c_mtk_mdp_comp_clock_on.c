
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mdp_comp {int id; int type; int * clk; scalar_t__ larb_dev; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int,int ,int ,...) ;
 int mtk_smi_larb_get (scalar_t__) ;

void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
{
 int i, err;

 if (comp->larb_dev) {
  err = mtk_smi_larb_get(comp->larb_dev);
  if (err)
   dev_err(dev,
    "failed to get larb, err %d. type:%d id:%d\n",
    err, comp->type, comp->id);
 }

 for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
  if (IS_ERR(comp->clk[i]))
   continue;
  err = clk_prepare_enable(comp->clk[i]);
  if (err)
   dev_err(dev,
   "failed to enable clock, err %d. type:%d id:%d i:%d\n",
    err, comp->type, comp->id, i);
 }
}
