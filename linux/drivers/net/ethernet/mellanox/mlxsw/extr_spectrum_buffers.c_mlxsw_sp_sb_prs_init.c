
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlxsw_sp_sb_pr {scalar_t__ size; int mode; } ;
struct mlxsw_sp {int dummy; } ;


 scalar_t__ MLXSW_SP_SB_INFI ;
 scalar_t__ mlxsw_sp_bytes_cells (struct mlxsw_sp*,scalar_t__) ;
 int mlxsw_sp_sb_pr_write (struct mlxsw_sp*,int,int ,scalar_t__,int) ;

__attribute__((used)) static int mlxsw_sp_sb_prs_init(struct mlxsw_sp *mlxsw_sp,
    const struct mlxsw_sp_sb_pr *prs,
    size_t prs_len)
{
 int i;
 int err;

 for (i = 0; i < prs_len; i++) {
  u32 size = prs[i].size;
  u32 size_cells;

  if (size == MLXSW_SP_SB_INFI) {
   err = mlxsw_sp_sb_pr_write(mlxsw_sp, i, prs[i].mode,
         0, 1);
  } else {
   size_cells = mlxsw_sp_bytes_cells(mlxsw_sp, size);
   err = mlxsw_sp_sb_pr_write(mlxsw_sp, i, prs[i].mode,
         size_cells, 0);
  }
  if (err)
   return err;
 }
 return 0;
}
