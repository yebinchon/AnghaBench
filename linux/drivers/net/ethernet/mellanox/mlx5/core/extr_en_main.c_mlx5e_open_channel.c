
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct xdp_umem {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_priv {TYPE_4__* mdev; TYPE_3__* channel_stats; struct net_device* netdev; int tstamp; } ;
struct mlx5e_params {int xdp_prog; int num_tc; } ;
struct mlx5e_channel_param {int dummy; } ;
struct mlx5e_channel {int ix; int cpu; int xdp; int napi; int lag_port; int irq_desc; int * stats; int num_tc; int mkey_be; struct net_device* netdev; int pdev; int * tstamp; TYPE_4__* mdev; struct mlx5e_priv* priv; } ;
struct TYPE_7__ {int key; } ;
struct TYPE_8__ {TYPE_1__ mkey; } ;
struct TYPE_10__ {TYPE_2__ mlx5e_res; int device; } ;
struct TYPE_9__ {int ch; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_be32 (int ) ;
 int cpu_to_node (int) ;
 int cpumask_first (int ) ;
 int irq_to_desc (unsigned int) ;
 int kvfree (struct mlx5e_channel*) ;
 struct mlx5e_channel* kvzalloc_node (int,int ,int ) ;
 int mlx5_comp_irq_get_affinity_mask (TYPE_4__*,int) ;
 int mlx5_vector2eqn (TYPE_4__*,int,int*,unsigned int*) ;
 int mlx5e_alloc_xps_cpumask (struct mlx5e_channel*,struct mlx5e_params*) ;
 int mlx5e_build_xsk_param (struct xdp_umem*,struct mlx5e_xsk_param*) ;
 int mlx5e_close_queues (struct mlx5e_channel*) ;
 int mlx5e_enumerate_lag_port (TYPE_4__*,int) ;
 int mlx5e_free_xps_cpumask (struct mlx5e_channel*) ;
 int mlx5e_napi_poll ;
 int mlx5e_open_queues (struct mlx5e_channel*,struct mlx5e_params*,struct mlx5e_channel_param*) ;
 int mlx5e_open_xsk (struct mlx5e_priv*,struct mlx5e_params*,struct mlx5e_xsk_param*,struct xdp_umem*,struct mlx5e_channel*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int netif_napi_del (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlx5e_open_channel(struct mlx5e_priv *priv, int ix,
         struct mlx5e_params *params,
         struct mlx5e_channel_param *cparam,
         struct xdp_umem *umem,
         struct mlx5e_channel **cp)
{
 int cpu = cpumask_first(mlx5_comp_irq_get_affinity_mask(priv->mdev, ix));
 struct net_device *netdev = priv->netdev;
 struct mlx5e_xsk_param xsk;
 struct mlx5e_channel *c;
 unsigned int irq;
 int err;
 int eqn;

 err = mlx5_vector2eqn(priv->mdev, ix, &eqn, &irq);
 if (err)
  return err;

 c = kvzalloc_node(sizeof(*c), GFP_KERNEL, cpu_to_node(cpu));
 if (!c)
  return -ENOMEM;

 c->priv = priv;
 c->mdev = priv->mdev;
 c->tstamp = &priv->tstamp;
 c->ix = ix;
 c->cpu = cpu;
 c->pdev = priv->mdev->device;
 c->netdev = priv->netdev;
 c->mkey_be = cpu_to_be32(priv->mdev->mlx5e_res.mkey.key);
 c->num_tc = params->num_tc;
 c->xdp = !!params->xdp_prog;
 c->stats = &priv->channel_stats[ix].ch;
 c->irq_desc = irq_to_desc(irq);
 c->lag_port = mlx5e_enumerate_lag_port(priv->mdev, ix);

 err = mlx5e_alloc_xps_cpumask(c, params);
 if (err)
  goto err_free_channel;

 netif_napi_add(netdev, &c->napi, mlx5e_napi_poll, 64);

 err = mlx5e_open_queues(c, params, cparam);
 if (unlikely(err))
  goto err_napi_del;

 if (umem) {
  mlx5e_build_xsk_param(umem, &xsk);
  err = mlx5e_open_xsk(priv, params, &xsk, umem, c);
  if (unlikely(err))
   goto err_close_queues;
 }

 *cp = c;

 return 0;

err_close_queues:
 mlx5e_close_queues(c);

err_napi_del:
 netif_napi_del(&c->napi);
 mlx5e_free_xps_cpumask(c);

err_free_channel:
 kvfree(c);

 return err;
}
