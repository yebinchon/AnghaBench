
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nve_mc_record {scalar_t__ num_entries; TYPE_1__* ops; int kvdl_index; int list; struct mlxsw_sp_nve_mc_list* mc_list; } ;
struct mlxsw_sp_nve_mc_list {int records_list; } ;
struct mlxsw_sp_nve_mc_entry {int valid; } ;
struct TYPE_2__ {int (* entry_del ) (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ;} ;


 int list ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int list_is_singular (int *) ;
 struct mlxsw_sp_nve_mc_record* list_next_entry (struct mlxsw_sp_nve_mc_record*,int ) ;
 struct mlxsw_sp_nve_mc_record* list_prev_entry (struct mlxsw_sp_nve_mc_record*,int ) ;
 scalar_t__ mlxsw_sp_nve_mc_record_is_first (struct mlxsw_sp_nve_mc_record*) ;
 int mlxsw_sp_nve_mc_record_refresh (struct mlxsw_sp_nve_mc_record*) ;
 int stub1 (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ;
 int stub2 (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ;
 int stub3 (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ;
 int stub4 (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ;
 int swap (int ,int ) ;

__attribute__((used)) static void
mlxsw_sp_nve_mc_record_entry_del(struct mlxsw_sp_nve_mc_record *mc_record,
     struct mlxsw_sp_nve_mc_entry *mc_entry)
{
 struct mlxsw_sp_nve_mc_list *mc_list = mc_record->mc_list;

 mc_entry->valid = 0;
 mc_record->num_entries--;




 if (mc_record->num_entries != 0) {
  mlxsw_sp_nve_mc_record_refresh(mc_record);
  mc_record->ops->entry_del(mc_record, mc_entry);
  return;
 }







 if (!mlxsw_sp_nve_mc_record_is_first(mc_record)) {
  struct mlxsw_sp_nve_mc_record *prev_record;

  prev_record = list_prev_entry(mc_record, list);
  list_del(&mc_record->list);
  mlxsw_sp_nve_mc_record_refresh(prev_record);
  list_add_tail(&mc_record->list, &mc_list->records_list);
  mc_record->ops->entry_del(mc_record, mc_entry);
  return;
 }






 if (mlxsw_sp_nve_mc_record_is_first(mc_record) &&
     !list_is_singular(&mc_list->records_list)) {
  struct mlxsw_sp_nve_mc_record *next_record;

  next_record = list_next_entry(mc_record, list);
  swap(mc_record->kvdl_index, next_record->kvdl_index);
  mlxsw_sp_nve_mc_record_refresh(next_record);
  mc_record->ops->entry_del(mc_record, mc_entry);
  return;
 }




 mc_record->ops->entry_del(mc_record, mc_entry);
}
