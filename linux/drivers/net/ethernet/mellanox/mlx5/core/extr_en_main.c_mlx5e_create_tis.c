
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int tdn; } ;
struct TYPE_4__ {int pdn; TYPE_1__ td; } ;
struct mlx5_core_dev {TYPE_2__ mlx5e_res; } ;


 void* MLX5_ADDR_OF (int ,void*,int ) ;
 scalar_t__ MLX5_GET (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int create_tis_in ;
 int ctx ;
 int mlx5_core_create_tis (struct mlx5_core_dev*,void*,int ,int *) ;
 scalar_t__ mlx5_lag_is_lacp_owner (struct mlx5_core_dev*) ;
 int pd ;
 int strict_lag_tx_port_affinity ;
 int tls_en ;
 int transport_domain ;

int mlx5e_create_tis(struct mlx5_core_dev *mdev, void *in, u32 *tisn)
{
 void *tisc = MLX5_ADDR_OF(create_tis_in, in, ctx);

 MLX5_SET(tisc, tisc, transport_domain, mdev->mlx5e_res.td.tdn);

 if (MLX5_GET(tisc, tisc, tls_en))
  MLX5_SET(tisc, tisc, pd, mdev->mlx5e_res.pdn);

 if (mlx5_lag_is_lacp_owner(mdev))
  MLX5_SET(tisc, tisc, strict_lag_tx_port_affinity, 1);

 return mlx5_core_create_tis(mdev, in, MLX5_ST_SZ_BYTES(create_tis_in), tisn);
}
