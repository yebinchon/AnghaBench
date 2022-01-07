
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct mlx5_core_dev {int pdev; } ;
struct TYPE_2__ {int host_total_vfs; } ;


 scalar_t__ IS_ERR (int const*) ;
 scalar_t__ MLX5_GET (int ,int const*,int ) ;
 TYPE_1__ host_params_context ;
 int kvfree (int const*) ;
 scalar_t__ mlx5_core_is_ecpf_esw_manager (struct mlx5_core_dev*) ;
 int * mlx5_esw_query_functions (struct mlx5_core_dev*) ;
 scalar_t__ pci_sriov_get_totalvfs (int ) ;
 int query_esw_functions_out ;

__attribute__((used)) static u16 mlx5_get_max_vfs(struct mlx5_core_dev *dev)
{
 u16 host_total_vfs;
 const u32 *out;

 if (mlx5_core_is_ecpf_esw_manager(dev)) {
  out = mlx5_esw_query_functions(dev);




  if (IS_ERR(out))
   goto done;
  host_total_vfs = MLX5_GET(query_esw_functions_out, out,
       host_params_context.host_total_vfs);
  kvfree(out);
  if (host_total_vfs)
   return host_total_vfs;
 }

done:
 return pci_sriov_get_totalvfs(dev->pdev);
}
