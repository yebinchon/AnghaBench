
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nve_mc_record {size_t proto; int num_entries; struct mlxsw_sp_nve_mc_entry* entries; TYPE_1__* mlxsw_sp; } ;
struct mlxsw_sp_nve_mc_entry {int valid; } ;
struct mlxsw_sp_nve {unsigned int* num_max_mc_entries; } ;
struct TYPE_2__ {struct mlxsw_sp_nve* nve; } ;


 int WARN_ON (int ) ;
 int mlxsw_sp_nve_mc_record_entry_del (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ;
 int mlxsw_sp_nve_mc_record_put (struct mlxsw_sp_nve_mc_record*) ;

__attribute__((used)) static void
mlxsw_sp_nve_mc_record_delete(struct mlxsw_sp_nve_mc_record *mc_record)
{
 struct mlxsw_sp_nve *nve = mc_record->mlxsw_sp->nve;
 unsigned int num_max_entries;
 int i;

 num_max_entries = nve->num_max_mc_entries[mc_record->proto];
 for (i = 0; i < num_max_entries; i++) {
  struct mlxsw_sp_nve_mc_entry *mc_entry = &mc_record->entries[i];

  if (!mc_entry->valid)
   continue;
  mlxsw_sp_nve_mc_record_entry_del(mc_record, mc_entry);
 }

 WARN_ON(mc_record->num_entries);
 mlxsw_sp_nve_mc_record_put(mc_record);
}
