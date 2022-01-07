
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_channel {int xps_cpumask; } ;


 int free_cpumask_var (int ) ;

__attribute__((used)) static void mlx5e_free_xps_cpumask(struct mlx5e_channel *c)
{
 free_cpumask_var(c->xps_cpumask);
}
