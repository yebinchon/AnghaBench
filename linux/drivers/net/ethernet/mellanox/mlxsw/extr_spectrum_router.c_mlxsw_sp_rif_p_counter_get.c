
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {unsigned int counter_egress; unsigned int counter_ingress; } ;
typedef enum mlxsw_sp_rif_counter_dir { ____Placeholder_mlxsw_sp_rif_counter_dir } mlxsw_sp_rif_counter_dir ;





__attribute__((used)) static unsigned int *
mlxsw_sp_rif_p_counter_get(struct mlxsw_sp_rif *rif,
      enum mlxsw_sp_rif_counter_dir dir)
{
 switch (dir) {
 case 129:
  return &rif->counter_egress;
 case 128:
  return &rif->counter_ingress;
 }
 return ((void*)0);
}
