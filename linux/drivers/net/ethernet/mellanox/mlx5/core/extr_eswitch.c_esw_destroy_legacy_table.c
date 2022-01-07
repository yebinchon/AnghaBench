
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eswitch {int dummy; } ;


 int esw_cleanup_vepa_rules (struct mlx5_eswitch*) ;
 int esw_destroy_legacy_fdb_table (struct mlx5_eswitch*) ;
 int esw_destroy_legacy_vepa_table (struct mlx5_eswitch*) ;

__attribute__((used)) static void esw_destroy_legacy_table(struct mlx5_eswitch *esw)
{
 esw_cleanup_vepa_rules(esw);
 esw_destroy_legacy_fdb_table(esw);
 esw_destroy_legacy_vepa_table(esw);
}
