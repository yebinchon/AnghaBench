
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct bpf_prog* xdp_prog; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
struct mlx5e_priv {int state_lock; TYPE_2__ channels; } ;
struct bpf_prog {TYPE_3__* aux; } ;
struct TYPE_6__ {int id; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 mlx5e_xdp_query(struct net_device *dev)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 const struct bpf_prog *xdp_prog;
 u32 prog_id = 0;

 mutex_lock(&priv->state_lock);
 xdp_prog = priv->channels.params.xdp_prog;
 if (xdp_prog)
  prog_id = xdp_prog->aux->id;
 mutex_unlock(&priv->state_lock);

 return prog_id;
}
