
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct mlx5_flow_rule {int dest_attr; TYPE_1__ node; int next_ft; } ;
struct mlx5_flow_destination {int dummy; } ;


 int FS_TYPE_FLOW_DEST ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mlx5_flow_rule* kzalloc (int,int ) ;
 int memcpy (int *,struct mlx5_flow_destination*,int) ;

__attribute__((used)) static struct mlx5_flow_rule *alloc_rule(struct mlx5_flow_destination *dest)
{
 struct mlx5_flow_rule *rule;

 rule = kzalloc(sizeof(*rule), GFP_KERNEL);
 if (!rule)
  return ((void*)0);

 INIT_LIST_HEAD(&rule->next_ft);
 rule->node.type = FS_TYPE_FLOW_DEST;
 if (dest)
  memcpy(&rule->dest_attr, dest, sizeof(*dest));

 return rule;
}
