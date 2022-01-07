
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_lag {TYPE_1__* pf; } ;
struct TYPE_2__ {scalar_t__ dev; } ;


 int MLX5_INTERFACE_PROTOCOL_IB ;
 int MLX5_MAX_PORTS ;
 int mlx5_add_dev_by_protocol (scalar_t__,int ) ;

__attribute__((used)) static void mlx5_lag_add_ib_devices(struct mlx5_lag *ldev)
{
 int i;

 for (i = 0; i < MLX5_MAX_PORTS; i++)
  if (ldev->pf[i].dev)
   mlx5_add_dev_by_protocol(ldev->pf[i].dev,
       MLX5_INTERFACE_PROTOCOL_IB);
}
