
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_geneve {int sync_lock; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 struct mlx5_geneve* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct mlx5_geneve* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct mlx5_geneve *mlx5_geneve_create(struct mlx5_core_dev *mdev)
{
 struct mlx5_geneve *geneve =
  kzalloc(sizeof(*geneve), GFP_KERNEL);

 if (!geneve)
  return ERR_PTR(-ENOMEM);
 geneve->mdev = mdev;
 mutex_init(&geneve->sync_lock);

 return geneve;
}
