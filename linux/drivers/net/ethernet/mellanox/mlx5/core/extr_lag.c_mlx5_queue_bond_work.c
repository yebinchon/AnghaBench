
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_lag {int bond_work; int wq; } ;


 int queue_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static void mlx5_queue_bond_work(struct mlx5_lag *ldev, unsigned long delay)
{
 queue_delayed_work(ldev->wq, &ldev->bond_work, delay);
}
