
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nve_mc_record {scalar_t__ num_entries; } ;


 int mlxsw_sp_nve_mc_record_destroy (struct mlxsw_sp_nve_mc_record*) ;

__attribute__((used)) static void
mlxsw_sp_nve_mc_record_put(struct mlxsw_sp_nve_mc_record *mc_record)
{
 if (mc_record->num_entries != 0)
  return;

 mlxsw_sp_nve_mc_record_destroy(mc_record);
}
