
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_flow_steering {int dummy; } ;
struct mlx5_flow_root_namespace {TYPE_2__* dev; } ;
struct fs_node {int dummy; } ;
struct TYPE_3__ {struct mlx5_flow_steering* steering; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;


 struct mlx5_flow_root_namespace* find_root (struct fs_node*) ;

__attribute__((used)) static inline struct mlx5_flow_steering *get_steering(struct fs_node *node)
{
 struct mlx5_flow_root_namespace *root = find_root(node);

 if (root)
  return root->dev->priv.steering;
 return ((void*)0);
}
