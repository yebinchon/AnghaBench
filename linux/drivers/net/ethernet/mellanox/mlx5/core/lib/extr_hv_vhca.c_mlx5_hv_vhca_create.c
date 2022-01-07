
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hv_vhca {int agents_lock; struct mlx5_core_dev* dev; int work_queue; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 struct mlx5_hv_vhca* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int create_singlethread_workqueue (char*) ;
 int kfree (struct mlx5_hv_vhca*) ;
 struct mlx5_hv_vhca* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct mlx5_hv_vhca *mlx5_hv_vhca_create(struct mlx5_core_dev *dev)
{
 struct mlx5_hv_vhca *hv_vhca = ((void*)0);

 hv_vhca = kzalloc(sizeof(*hv_vhca), GFP_KERNEL);
 if (!hv_vhca)
  return ERR_PTR(-ENOMEM);

 hv_vhca->work_queue = create_singlethread_workqueue("mlx5_hv_vhca");
 if (!hv_vhca->work_queue) {
  kfree(hv_vhca);
  return ERR_PTR(-ENOMEM);
 }

 hv_vhca->dev = dev;
 mutex_init(&hv_vhca->agents_lock);

 return hv_vhca;
}
