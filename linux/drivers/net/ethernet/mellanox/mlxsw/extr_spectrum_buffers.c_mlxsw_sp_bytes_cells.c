
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp {TYPE_1__* sb; } ;
struct TYPE_2__ {int cell_size; } ;


 int DIV_ROUND_UP (int ,int ) ;

u32 mlxsw_sp_bytes_cells(const struct mlxsw_sp *mlxsw_sp, u32 bytes)
{
 return DIV_ROUND_UP(bytes, mlxsw_sp->sb->cell_size);
}
