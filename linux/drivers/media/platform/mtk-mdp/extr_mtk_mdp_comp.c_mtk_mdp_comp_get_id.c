
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef enum mtk_mdp_comp_type { ____Placeholder_mtk_mdp_comp_type } mtk_mdp_comp_type ;
struct TYPE_3__ {int type; int alias_id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int dev_err (struct device*,char*,int,int) ;
 int * mtk_mdp_comp_stem ;
 TYPE_1__* mtk_mdp_matches ;
 int of_alias_get_id (struct device_node*,int ) ;

int mtk_mdp_comp_get_id(struct device *dev, struct device_node *node,
   enum mtk_mdp_comp_type comp_type)
{
 int id = of_alias_get_id(node, mtk_mdp_comp_stem[comp_type]);
 int i;

 for (i = 0; i < ARRAY_SIZE(mtk_mdp_matches); i++) {
  if (comp_type == mtk_mdp_matches[i].type &&
      id == mtk_mdp_matches[i].alias_id)
   return i;
 }

 dev_err(dev, "Failed to get id. type: %d, id: %d\n", comp_type, id);

 return -EINVAL;
}
