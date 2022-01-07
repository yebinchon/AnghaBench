
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_res {int dummy; } ;
struct mlxsw_pci {int core; } ;
struct mlxsw_config_profile {int dummy; } ;


 int KVD_DOUBLE_SIZE ;
 int KVD_LINEAR_SIZE ;
 int KVD_SINGLE_SIZE ;
 int MLXSW_RES_SET (struct mlxsw_res*,int ,int ) ;
 int mlxsw_core_kvd_sizes_get (int ,struct mlxsw_config_profile const*,int *,int *,int *) ;

__attribute__((used)) static int
mlxsw_pci_profile_get_kvd_sizes(const struct mlxsw_pci *mlxsw_pci,
    const struct mlxsw_config_profile *profile,
    struct mlxsw_res *res)
{
 u64 single_size, double_size, linear_size;
 int err;

 err = mlxsw_core_kvd_sizes_get(mlxsw_pci->core, profile,
           &single_size, &double_size,
           &linear_size);
 if (err)
  return err;

 MLXSW_RES_SET(res, KVD_SINGLE_SIZE, single_size);
 MLXSW_RES_SET(res, KVD_DOUBLE_SIZE, double_size);
 MLXSW_RES_SET(res, KVD_LINEAR_SIZE, linear_size);

 return 0;
}
