
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct net_device {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct TYPE_3__ {struct mlx5e_channel** c; struct mlx5e_params params; } ;
struct mlx5e_priv {TYPE_1__ channels; } ;
struct TYPE_4__ {int state; } ;
struct mlx5e_channel {int xskicosq_lock; TYPE_2__ xskicosq; int napi; int * state; } ;


 int EINVAL ;
 int ENETDOWN ;
 int ENXIO ;
 int MLX5E_CHANNEL_STATE_XSK ;
 int MLX5E_RQ_GROUP_XSK ;
 int MLX5E_SQ_STATE_ENABLED ;
 int mlx5e_qid_get_ch_if_in_group (struct mlx5e_params*,int ,int ,size_t*) ;
 int mlx5e_trigger_irq (TYPE_2__*) ;
 int mlx5e_xdp_is_open (struct mlx5e_priv*) ;
 int napi_if_scheduled_mark_missed (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

int mlx5e_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5e_params *params = &priv->channels.params;
 struct mlx5e_channel *c;
 u16 ix;

 if (unlikely(!mlx5e_xdp_is_open(priv)))
  return -ENETDOWN;

 if (unlikely(!mlx5e_qid_get_ch_if_in_group(params, qid, MLX5E_RQ_GROUP_XSK, &ix)))
  return -EINVAL;

 c = priv->channels.c[ix];

 if (unlikely(!test_bit(MLX5E_CHANNEL_STATE_XSK, c->state)))
  return -ENXIO;

 if (!napi_if_scheduled_mark_missed(&c->napi)) {




  if (unlikely(!test_bit(MLX5E_SQ_STATE_ENABLED, &c->xskicosq.state)))
   return 0;

  spin_lock(&c->xskicosq_lock);
  mlx5e_trigger_irq(&c->xskicosq);
  spin_unlock(&c->xskicosq_lock);
 }

 return 0;
}
