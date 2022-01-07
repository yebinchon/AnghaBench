
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct mlxsw_sp_sb_pr {int dummy; } ;
struct mlxsw_sp {TYPE_1__* sb; } ;
struct TYPE_2__ {struct mlxsw_sp_sb_pr* prs; } ;



__attribute__((used)) static struct mlxsw_sp_sb_pr *mlxsw_sp_sb_pr_get(struct mlxsw_sp *mlxsw_sp,
       u16 pool_index)
{
 return &mlxsw_sp->sb->prs[pool_index];
}
