
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct mlxsw_sp_upper {int dummy; } ;
struct mlxsw_sp {struct mlxsw_sp_upper* lags; } ;



__attribute__((used)) static inline struct mlxsw_sp_upper *
mlxsw_sp_lag_get(struct mlxsw_sp *mlxsw_sp, u16 lag_id)
{
 return &mlxsw_sp->lags[lag_id];
}
