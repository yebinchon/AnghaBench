
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mdp_comp {int dev_node; } ;
struct device {int dummy; } ;


 int of_node_put (int ) ;

void mtk_mdp_comp_deinit(struct device *dev, struct mtk_mdp_comp *comp)
{
 of_node_put(comp->dev_node);
}
