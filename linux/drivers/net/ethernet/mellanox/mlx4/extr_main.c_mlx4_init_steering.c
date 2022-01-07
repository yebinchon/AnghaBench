
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_steer {int dummy; } ;
struct mlx4_priv {TYPE_2__* steer; } ;
struct TYPE_3__ {int num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {int * steer_entries; int * promisc_qps; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MLX4_NUM_STEERS ;
 TYPE_2__* kcalloc (int,int,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static int mlx4_init_steering(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int num_entries = dev->caps.num_ports;
 int i, j;

 priv->steer = kcalloc(num_entries, sizeof(struct mlx4_steer),
         GFP_KERNEL);
 if (!priv->steer)
  return -ENOMEM;

 for (i = 0; i < num_entries; i++)
  for (j = 0; j < MLX4_NUM_STEERS; j++) {
   INIT_LIST_HEAD(&priv->steer[i].promisc_qps[j]);
   INIT_LIST_HEAD(&priv->steer[i].steer_entries[j]);
  }
 return 0;
}
