
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* eq; } ;
struct mlx4_priv {TYPE_2__ eq_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {int eqn; } ;


 size_t MLX4_CQ_TO_EQ_VECTOR (int) ;
 size_t MLX4_EQ_ASYNC ;
 int get_async_ev_mask (struct mlx4_dev*) ;
 int mlx4_MAP_EQ (struct mlx4_dev*,int ,int ,int ) ;
 int mlx4_NOP (struct mlx4_dev*) ;
 int mlx4_cmd_use_events (struct mlx4_dev*) ;
 int mlx4_cmd_use_polling (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*) ;

int mlx4_test_interrupt(struct mlx4_dev *dev, int vector)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int err;


 mlx4_cmd_use_polling(dev);


 err = mlx4_MAP_EQ(dev, get_async_ev_mask(dev), 0,
     priv->eq_table.eq[MLX4_CQ_TO_EQ_VECTOR(vector)].eqn);
 if (err) {
  mlx4_warn(dev, "Failed mapping eq for interrupt test\n");
  goto out;
 }


 mlx4_cmd_use_events(dev);
 err = mlx4_NOP(dev);


 mlx4_cmd_use_polling(dev);
out:
 mlx4_MAP_EQ(dev, get_async_ev_mask(dev), 0,
      priv->eq_table.eq[MLX4_EQ_ASYNC].eqn);
 mlx4_cmd_use_events(dev);

 return err;
}
