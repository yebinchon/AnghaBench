
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_fid_family {int fids_bitmap; scalar_t__ start_index; TYPE_2__* ops; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_fid {scalar_t__ ref_count; scalar_t__ fid_index; struct mlxsw_sp_fid_family* fid_family; int ht_node; int list; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
struct TYPE_4__ {int (* deconfigure ) (struct mlxsw_sp_fid*) ;} ;
struct TYPE_3__ {int fid_ht; } ;


 int __clear_bit (scalar_t__,int ) ;
 int kfree (struct mlxsw_sp_fid*) ;
 int list_del (int *) ;
 int mlxsw_sp_fid_ht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (struct mlxsw_sp_fid*) ;

void mlxsw_sp_fid_put(struct mlxsw_sp_fid *fid)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
 struct mlxsw_sp *mlxsw_sp = fid_family->mlxsw_sp;

 if (--fid->ref_count != 0)
  return;

 list_del(&fid->list);
 rhashtable_remove_fast(&mlxsw_sp->fid_core->fid_ht,
          &fid->ht_node, mlxsw_sp_fid_ht_params);
 fid->fid_family->ops->deconfigure(fid);
 __clear_bit(fid->fid_index - fid_family->start_index,
      fid_family->fids_bitmap);
 kfree(fid);
}
