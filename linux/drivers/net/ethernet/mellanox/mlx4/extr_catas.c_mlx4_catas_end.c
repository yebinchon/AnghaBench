
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_2__ {int * catas_wq; } ;


 int destroy_workqueue (int *) ;

void mlx4_catas_end(struct mlx4_dev *dev)
{
 if (dev->persist->catas_wq) {
  destroy_workqueue(dev->persist->catas_wq);
  dev->persist->catas_wq = ((void*)0);
 }
}
