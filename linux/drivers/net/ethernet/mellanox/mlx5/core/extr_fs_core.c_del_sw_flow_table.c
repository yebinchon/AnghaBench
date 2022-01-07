
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fs_node* parent; } ;
struct mlx5_flow_table {int num_ft; TYPE_1__ node; int fgs_hash; } ;
struct fs_prio {int num_ft; TYPE_1__ node; int fgs_hash; } ;
struct fs_node {int dummy; } ;


 int fs_get_obj (struct mlx5_flow_table*,struct fs_node*) ;
 int kfree (struct mlx5_flow_table*) ;
 int rhltable_destroy (int *) ;

__attribute__((used)) static void del_sw_flow_table(struct fs_node *node)
{
 struct mlx5_flow_table *ft;
 struct fs_prio *prio;

 fs_get_obj(ft, node);

 rhltable_destroy(&ft->fgs_hash);
 fs_get_obj(prio, ft->node.parent);
 prio->num_ft--;
 kfree(ft);
}
