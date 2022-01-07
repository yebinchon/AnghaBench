
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_eqe {int owner; } ;
struct mlx5_eq {int cons_index; int nent; } ;


 int dma_rmb () ;
 struct mlx5_eqe* get_eqe (struct mlx5_eq*,int) ;

struct mlx5_eqe *mlx5_eq_get_eqe(struct mlx5_eq *eq, u32 cc)
{
 u32 ci = eq->cons_index + cc;
 struct mlx5_eqe *eqe;

 eqe = get_eqe(eq, ci & (eq->nent - 1));
 eqe = ((eqe->owner & 1) ^ !!(ci & eq->nent)) ? ((void*)0) : eqe;



 if (eqe)
  dma_rmb();

 return eqe;
}
