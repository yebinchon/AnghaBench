
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_fwd_entry {scalar_t__ ref_count; } ;
struct mlxsw_afa {int dummy; } ;


 int mlxsw_afa_fwd_entry_destroy (struct mlxsw_afa*,struct mlxsw_afa_fwd_entry*) ;

__attribute__((used)) static void mlxsw_afa_fwd_entry_put(struct mlxsw_afa *mlxsw_afa,
        struct mlxsw_afa_fwd_entry *fwd_entry)
{
 if (--fwd_entry->ref_count)
  return;
 mlxsw_afa_fwd_entry_destroy(mlxsw_afa, fwd_entry);
}
