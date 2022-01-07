
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid_family {size_t type; int fids_list; int fids_bitmap; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
struct TYPE_2__ {int ** fid_family_arr; } ;


 int WARN_ON_ONCE (int) ;
 int bitmap_free (int ) ;
 int kfree (struct mlxsw_sp_fid_family*) ;
 int list_empty (int *) ;

__attribute__((used)) static void
mlxsw_sp_fid_family_unregister(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_fid_family *fid_family)
{
 mlxsw_sp->fid_core->fid_family_arr[fid_family->type] = ((void*)0);
 bitmap_free(fid_family->fids_bitmap);
 WARN_ON_ONCE(!list_empty(&fid_family->fids_list));
 kfree(fid_family);
}
