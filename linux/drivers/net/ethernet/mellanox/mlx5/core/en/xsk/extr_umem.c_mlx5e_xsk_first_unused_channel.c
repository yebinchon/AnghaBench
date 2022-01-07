
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlx5e_xsk {scalar_t__ refcnt; } ;
struct mlx5e_params {scalar_t__ num_channels; } ;


 scalar_t__ mlx5e_xsk_get_umem (struct mlx5e_params*,struct mlx5e_xsk*,scalar_t__) ;

u16 mlx5e_xsk_first_unused_channel(struct mlx5e_params *params, struct mlx5e_xsk *xsk)
{
 u16 res = xsk->refcnt ? params->num_channels : 0;

 while (res) {
  if (mlx5e_xsk_get_umem(params, xsk, res - 1))
   break;
  --res;
 }

 return res;
}
