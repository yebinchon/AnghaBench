
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eswitch {int dummy; } ;


 int esw_del_fdb_peer_miss_rules (struct mlx5_eswitch*) ;
 int mlx5e_tc_clean_fdb_peer_flows (struct mlx5_eswitch*) ;

__attribute__((used)) static void mlx5_esw_offloads_unpair(struct mlx5_eswitch *esw)
{
 mlx5e_tc_clean_fdb_peer_flows(esw);
 esw_del_fdb_peer_miss_rules(esw);
}
