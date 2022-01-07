
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct xdp_umem {int dummy; } ;
struct mlx5e_xsk {struct xdp_umem** umems; } ;
struct mlx5e_params {size_t num_channels; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct xdp_umem *mlx5e_xsk_get_umem(struct mlx5e_params *params,
        struct mlx5e_xsk *xsk, u16 ix)
{
 if (!xsk || !xsk->umems)
  return ((void*)0);

 if (unlikely(ix >= params->num_channels))
  return ((void*)0);

 return xsk->umems[ix];
}
