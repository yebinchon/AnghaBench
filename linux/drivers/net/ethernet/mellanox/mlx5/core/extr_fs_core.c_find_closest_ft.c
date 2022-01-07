
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int dummy; } ;
struct fs_node {struct fs_node* parent; int list; } ;
struct fs_prio {struct fs_node node; } ;


 struct mlx5_flow_table* find_closest_ft_recursive (struct fs_node*,int *,int) ;

__attribute__((used)) static struct mlx5_flow_table *find_closest_ft(struct fs_prio *prio, bool reverse)
{
 struct mlx5_flow_table *ft = ((void*)0);
 struct fs_node *curr_node;
 struct fs_node *parent;

 parent = prio->node.parent;
 curr_node = &prio->node;
 while (!ft && parent) {
  ft = find_closest_ft_recursive(parent, &curr_node->list, reverse);
  curr_node = parent;
  parent = curr_node->parent;
 }
 return ft;
}
