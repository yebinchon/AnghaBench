
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dmpt_table; } ;
struct mlx4_priv {TYPE_1__ mr_table; } ;
struct TYPE_4__ {int key; } ;
struct mlx4_fmr {int mpt; TYPE_2__ mr; } ;
struct mlx4_dev {int dummy; } ;


 int ENOMEM ;
 int key_to_hw_index (int ) ;
 int mlx4_mr_enable (struct mlx4_dev*,TYPE_2__*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_table_find (int *,int ,int *) ;

int mlx4_fmr_enable(struct mlx4_dev *dev, struct mlx4_fmr *fmr)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int err;

 err = mlx4_mr_enable(dev, &fmr->mr);
 if (err)
  return err;

 fmr->mpt = mlx4_table_find(&priv->mr_table.dmpt_table,
        key_to_hw_index(fmr->mr.key), ((void*)0));
 if (!fmr->mpt)
  return -ENOMEM;

 return 0;
}
