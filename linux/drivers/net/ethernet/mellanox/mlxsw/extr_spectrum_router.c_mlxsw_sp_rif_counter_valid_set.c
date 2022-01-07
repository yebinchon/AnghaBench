
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {int counter_egress_valid; int counter_ingress_valid; } ;
typedef enum mlxsw_sp_rif_counter_dir { ____Placeholder_mlxsw_sp_rif_counter_dir } mlxsw_sp_rif_counter_dir ;





__attribute__((used)) static void
mlxsw_sp_rif_counter_valid_set(struct mlxsw_sp_rif *rif,
          enum mlxsw_sp_rif_counter_dir dir,
          bool valid)
{
 switch (dir) {
 case 129:
  rif->counter_egress_valid = valid;
  break;
 case 128:
  rif->counter_ingress_valid = valid;
  break;
 }
}
