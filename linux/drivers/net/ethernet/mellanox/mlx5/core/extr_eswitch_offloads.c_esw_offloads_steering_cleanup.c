
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eswitch {int dummy; } ;


 int esw_destroy_offloads_acl_tables (struct mlx5_eswitch*) ;
 int esw_destroy_offloads_fdb_tables (struct mlx5_eswitch*) ;
 int esw_destroy_offloads_table (struct mlx5_eswitch*) ;
 int esw_destroy_vport_rx_group (struct mlx5_eswitch*) ;

__attribute__((used)) static void esw_offloads_steering_cleanup(struct mlx5_eswitch *esw)
{
 esw_destroy_vport_rx_group(esw);
 esw_destroy_offloads_table(esw);
 esw_destroy_offloads_fdb_tables(esw);
 esw_destroy_offloads_acl_tables(esw);
}
