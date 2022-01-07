
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_fwd_entry_ref {int fwd_entry; int resource; } ;
struct mlxsw_afa_block {int afa; } ;


 int kfree (struct mlxsw_afa_fwd_entry_ref*) ;
 int mlxsw_afa_fwd_entry_put (int ,int ) ;
 int mlxsw_afa_resource_del (int *) ;

__attribute__((used)) static void
mlxsw_afa_fwd_entry_ref_destroy(struct mlxsw_afa_block *block,
    struct mlxsw_afa_fwd_entry_ref *fwd_entry_ref)
{
 mlxsw_afa_resource_del(&fwd_entry_ref->resource);
 mlxsw_afa_fwd_entry_put(block->afa, fwd_entry_ref->fwd_entry);
 kfree(fwd_entry_ref);
}
