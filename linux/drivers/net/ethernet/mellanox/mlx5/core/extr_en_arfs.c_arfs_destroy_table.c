
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arfs_table {int ft; int default_rule; } ;


 int mlx5_del_flow_rules (int ) ;
 int mlx5e_destroy_flow_table (int *) ;

__attribute__((used)) static void arfs_destroy_table(struct arfs_table *arfs_t)
{
 mlx5_del_flow_rules(arfs_t->default_rule);
 mlx5e_destroy_flow_table(&arfs_t->ft);
}
