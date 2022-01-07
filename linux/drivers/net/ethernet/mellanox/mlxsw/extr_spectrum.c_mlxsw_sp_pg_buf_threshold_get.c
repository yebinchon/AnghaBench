
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_bytes_cells (struct mlxsw_sp const*,int) ;

__attribute__((used)) static u16 mlxsw_sp_pg_buf_threshold_get(const struct mlxsw_sp *mlxsw_sp,
      int mtu)
{
 return 2 * mlxsw_sp_bytes_cells(mlxsw_sp, mtu);
}
