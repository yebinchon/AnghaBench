
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp_nve_mc_record {unsigned int num_entries; size_t proto; TYPE_2__* ops; struct mlxsw_sp_nve_mc_entry* entries; int kvdl_index; int list; struct mlxsw_sp* mlxsw_sp; struct mlxsw_sp_nve_mc_list* mc_list; } ;
struct mlxsw_sp_nve_mc_list {int records_list; } ;
struct mlxsw_sp_nve_mc_entry {int valid; } ;
struct mlxsw_sp {int core; TYPE_1__* nve; } ;
typedef enum mlxsw_reg_tnumt_record_type { ____Placeholder_mlxsw_reg_tnumt_record_type } mlxsw_reg_tnumt_record_type ;
struct TYPE_4__ {int type; int (* entry_set ) (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*,char*,int ) ;} ;
struct TYPE_3__ {unsigned int* num_max_mc_entries; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_TNUMT_LEN ;
 int MLXSW_REG_TNUMT_TUNNEL_PORT_NVE ;
 int WARN_ON (int) ;
 int list ;
 int list_is_last (int *,int *) ;
 struct mlxsw_sp_nve_mc_record* list_next_entry (struct mlxsw_sp_nve_mc_record*,int ) ;
 int mlxsw_reg_tnumt_pack (char*,int,int ,int ,int,int ,unsigned int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int stub1 (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*,char*,int ) ;
 int tnumt ;

__attribute__((used)) static int
mlxsw_sp_nve_mc_record_refresh(struct mlxsw_sp_nve_mc_record *mc_record)
{
 enum mlxsw_reg_tnumt_record_type type = mc_record->ops->type;
 struct mlxsw_sp_nve_mc_list *mc_list = mc_record->mc_list;
 struct mlxsw_sp *mlxsw_sp = mc_record->mlxsw_sp;
 char tnumt_pl[MLXSW_REG_TNUMT_LEN];
 unsigned int num_max_entries;
 unsigned int num_entries = 0;
 u32 next_kvdl_index = 0;
 bool next_valid = 0;
 int i;

 if (!list_is_last(&mc_record->list, &mc_list->records_list)) {
  struct mlxsw_sp_nve_mc_record *next_record;

  next_record = list_next_entry(mc_record, list);
  next_kvdl_index = next_record->kvdl_index;
  next_valid = 1;
 }

 mlxsw_reg_tnumt_pack(tnumt_pl, type, MLXSW_REG_TNUMT_TUNNEL_PORT_NVE,
        mc_record->kvdl_index, next_valid,
        next_kvdl_index, mc_record->num_entries);

 num_max_entries = mlxsw_sp->nve->num_max_mc_entries[mc_record->proto];
 for (i = 0; i < num_max_entries; i++) {
  struct mlxsw_sp_nve_mc_entry *mc_entry;

  mc_entry = &mc_record->entries[i];
  if (!mc_entry->valid)
   continue;
  mc_record->ops->entry_set(mc_record, mc_entry, tnumt_pl,
       num_entries++);
 }

 WARN_ON(num_entries != mc_record->num_entries);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(tnumt), tnumt_pl);
}
