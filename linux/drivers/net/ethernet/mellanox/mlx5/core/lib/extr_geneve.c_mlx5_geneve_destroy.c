
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_geneve {int obj_id; int mdev; scalar_t__ refcount; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mlx5_geneve*) ;
 int kfree (struct mlx5_geneve*) ;
 int mlx5_geneve_tlv_option_destroy (int ,int ) ;

void mlx5_geneve_destroy(struct mlx5_geneve *geneve)
{
 if (IS_ERR_OR_NULL(geneve))
  return;


 if (geneve->refcount)
  mlx5_geneve_tlv_option_destroy(geneve->mdev, geneve->obj_id);

 kfree(geneve);
}
