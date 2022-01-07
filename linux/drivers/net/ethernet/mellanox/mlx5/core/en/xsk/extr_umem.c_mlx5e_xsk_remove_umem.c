
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct mlx5e_xsk {int ** umems; } ;


 int mlx5e_xsk_put_umems (struct mlx5e_xsk*) ;

__attribute__((used)) static void mlx5e_xsk_remove_umem(struct mlx5e_xsk *xsk, u16 ix)
{
 xsk->umems[ix] = ((void*)0);

 mlx5e_xsk_put_umems(xsk);
}
