
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_geneve {scalar_t__ refcount; int sync_lock; scalar_t__ obj_id; scalar_t__ opt_type; scalar_t__ opt_class; int mdev; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mlx5_geneve*) ;
 int mlx5_geneve_tlv_option_destroy (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_geneve_tlv_option_del(struct mlx5_geneve *geneve)
{
 if (IS_ERR_OR_NULL(geneve))
  return;

 mutex_lock(&geneve->sync_lock);
 if (--geneve->refcount == 0) {



  mlx5_geneve_tlv_option_destroy(geneve->mdev, geneve->obj_id);

  geneve->opt_class = 0;
  geneve->opt_type = 0;
  geneve->obj_id = 0;
 }
 mutex_unlock(&geneve->sync_lock);
}
