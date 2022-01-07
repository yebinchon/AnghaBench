
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp {TYPE_1__* sb; } ;
struct TYPE_2__ {int max_headroom_cells; } ;



u32 mlxsw_sp_sb_max_headroom_cells(const struct mlxsw_sp *mlxsw_sp)
{
 return mlxsw_sp->sb->max_headroom_cells;
}
