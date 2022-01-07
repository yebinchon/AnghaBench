
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nve_mc_record {int proto; int list; struct mlxsw_sp_nve_mc_list* mc_list; struct mlxsw_sp* mlxsw_sp; int ops; int kvdl_index; } ;
struct mlxsw_sp_nve_mc_list {int records_list; } ;
struct mlxsw_sp {TYPE_1__* nve; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
struct TYPE_2__ {unsigned int* num_max_mc_entries; } ;


 int ENOMEM ;
 struct mlxsw_sp_nve_mc_record* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MLXSW_SP_KVDL_ENTRY_TYPE_TNUMT ;
 int entries ;
 int kfree (struct mlxsw_sp_nve_mc_record*) ;
 struct mlxsw_sp_nve_mc_record* kzalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int mlxsw_sp_kvdl_alloc (struct mlxsw_sp*,int ,int,int *) ;
 int * mlxsw_sp_nve_mc_record_ops_arr ;
 int struct_size (struct mlxsw_sp_nve_mc_record*,int ,unsigned int) ;

__attribute__((used)) static struct mlxsw_sp_nve_mc_record *
mlxsw_sp_nve_mc_record_create(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_nve_mc_list *mc_list,
         enum mlxsw_sp_l3proto proto)
{
 unsigned int num_max_entries = mlxsw_sp->nve->num_max_mc_entries[proto];
 struct mlxsw_sp_nve_mc_record *mc_record;
 int err;

 mc_record = kzalloc(struct_size(mc_record, entries, num_max_entries),
       GFP_KERNEL);
 if (!mc_record)
  return ERR_PTR(-ENOMEM);

 err = mlxsw_sp_kvdl_alloc(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_TNUMT, 1,
      &mc_record->kvdl_index);
 if (err)
  goto err_kvdl_alloc;

 mc_record->ops = mlxsw_sp_nve_mc_record_ops_arr[proto];
 mc_record->mlxsw_sp = mlxsw_sp;
 mc_record->mc_list = mc_list;
 mc_record->proto = proto;
 list_add_tail(&mc_record->list, &mc_list->records_list);

 return mc_record;

err_kvdl_alloc:
 kfree(mc_record);
 return ERR_PTR(err);
}
