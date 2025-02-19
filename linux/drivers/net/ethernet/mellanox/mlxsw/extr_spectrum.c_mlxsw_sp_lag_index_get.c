
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_upper {struct net_device* dev; scalar_t__ ref_count; } ;
struct mlxsw_sp {int core; } ;


 int EBUSY ;
 int MAX_LAG ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 struct mlxsw_sp_upper* mlxsw_sp_lag_get (struct mlxsw_sp*,int) ;

__attribute__((used)) static int mlxsw_sp_lag_index_get(struct mlxsw_sp *mlxsw_sp,
      struct net_device *lag_dev,
      u16 *p_lag_id)
{
 struct mlxsw_sp_upper *lag;
 int free_lag_id = -1;
 u64 max_lag;
 int i;

 max_lag = MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_LAG);
 for (i = 0; i < max_lag; i++) {
  lag = mlxsw_sp_lag_get(mlxsw_sp, i);
  if (lag->ref_count) {
   if (lag->dev == lag_dev) {
    *p_lag_id = i;
    return 0;
   }
  } else if (free_lag_id < 0) {
   free_lag_id = i;
  }
 }
 if (free_lag_id < 0)
  return -EBUSY;
 *p_lag_id = free_lag_id;
 return 0;
}
