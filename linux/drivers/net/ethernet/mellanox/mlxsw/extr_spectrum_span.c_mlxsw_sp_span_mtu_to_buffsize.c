
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_bytes_cells (struct mlxsw_sp const*,int) ;

__attribute__((used)) static int mlxsw_sp_span_mtu_to_buffsize(const struct mlxsw_sp *mlxsw_sp,
      int mtu)
{
 return mlxsw_sp_bytes_cells(mlxsw_sp, mtu * 5 / 2) + 1;
}
