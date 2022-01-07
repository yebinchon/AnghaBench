
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_driver {int (* kvd_sizes_get ) (struct mlxsw_core*,struct mlxsw_config_profile const*,int *,int *,int *) ;} ;
struct mlxsw_core {struct mlxsw_driver* driver; } ;
struct mlxsw_config_profile {int dummy; } ;


 int EINVAL ;
 int stub1 (struct mlxsw_core*,struct mlxsw_config_profile const*,int *,int *,int *) ;

int mlxsw_core_kvd_sizes_get(struct mlxsw_core *mlxsw_core,
        const struct mlxsw_config_profile *profile,
        u64 *p_single_size, u64 *p_double_size,
        u64 *p_linear_size)
{
 struct mlxsw_driver *driver = mlxsw_core->driver;

 if (!driver->kvd_sizes_get)
  return -EINVAL;

 return driver->kvd_sizes_get(mlxsw_core, profile,
         p_single_size, p_double_size,
         p_linear_size);
}
