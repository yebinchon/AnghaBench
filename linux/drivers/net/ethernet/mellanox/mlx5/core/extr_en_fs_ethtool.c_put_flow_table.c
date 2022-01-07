
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_ethtool_table {int * ft; int num_rules; } ;


 int mlx5_destroy_flow_table (int *) ;

__attribute__((used)) static void put_flow_table(struct mlx5e_ethtool_table *eth_ft)
{
 if (!--eth_ft->num_rules) {
  mlx5_destroy_flow_table(eth_ft->ft);
  eth_ft->ft = ((void*)0);
 }
}
