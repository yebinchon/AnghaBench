
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nve_mc_record {size_t proto; struct mlxsw_sp_nve_mc_entry* entries; TYPE_1__* mlxsw_sp; } ;
struct mlxsw_sp_nve_mc_entry {scalar_t__ valid; } ;
struct mlxsw_sp_nve {unsigned int* num_max_mc_entries; } ;
struct TYPE_2__ {struct mlxsw_sp_nve* nve; } ;



__attribute__((used)) static struct mlxsw_sp_nve_mc_entry *
mlxsw_sp_nve_mc_free_entry_find(struct mlxsw_sp_nve_mc_record *mc_record)
{
 struct mlxsw_sp_nve *nve = mc_record->mlxsw_sp->nve;
 unsigned int num_max_entries;
 int i;

 num_max_entries = nve->num_max_mc_entries[mc_record->proto];
 for (i = 0; i < num_max_entries; i++) {
  if (mc_record->entries[i].valid)
   continue;
  return &mc_record->entries[i];
 }

 return ((void*)0);
}
