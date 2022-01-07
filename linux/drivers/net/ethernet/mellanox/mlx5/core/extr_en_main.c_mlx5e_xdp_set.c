
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_8__ {struct bpf_prog* xdp_prog; } ;
struct TYPE_5__ {int num; struct mlx5e_channel** c; TYPE_4__ params; } ;
struct mlx5e_priv {int state_lock; TYPE_1__ channels; int mdev; int state; } ;
struct mlx5e_channels {TYPE_4__ params; } ;
struct TYPE_7__ {int state; struct bpf_prog* xdp_prog; } ;
struct TYPE_6__ {int state; struct bpf_prog* xdp_prog; } ;
struct mlx5e_channel {int napi; TYPE_3__ xskrq; TYPE_2__ rq; int * state; } ;
struct bpf_prog {int dummy; } ;


 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int MLX5E_CHANNEL_STATE_XSK ;
 int MLX5E_RQ_STATE_ENABLED ;
 int MLX5E_STATE_OPENED ;
 int PTR_ERR (struct bpf_prog*) ;
 struct bpf_prog* bpf_prog_add (struct bpf_prog*,int) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int clear_bit (int ,int *) ;
 int mlx5e_safe_switch_channels (struct mlx5e_priv*,struct mlx5e_channels*,int ) ;
 int mlx5e_set_rq_type (int ,TYPE_4__*) ;
 int mlx5e_xdp_allowed (struct mlx5e_priv*,struct bpf_prog*) ;
 int mlx5e_xdp_update_state ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_schedule (int *) ;
 int napi_synchronize (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 struct bpf_prog* xchg (struct bpf_prog**,struct bpf_prog*) ;

__attribute__((used)) static int mlx5e_xdp_set(struct net_device *netdev, struct bpf_prog *prog)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct bpf_prog *old_prog;
 bool reset, was_opened;
 int err = 0;
 int i;

 mutex_lock(&priv->state_lock);

 if (prog) {
  err = mlx5e_xdp_allowed(priv, prog);
  if (err)
   goto unlock;
 }

 was_opened = test_bit(MLX5E_STATE_OPENED, &priv->state);

 reset = (!priv->channels.params.xdp_prog || !prog);

 if (was_opened && !reset) {



  prog = bpf_prog_add(prog, priv->channels.num);
  if (IS_ERR(prog)) {
   err = PTR_ERR(prog);
   goto unlock;
  }
 }

 if (was_opened && reset) {
  struct mlx5e_channels new_channels = {};

  new_channels.params = priv->channels.params;
  new_channels.params.xdp_prog = prog;
  mlx5e_set_rq_type(priv->mdev, &new_channels.params);
  old_prog = priv->channels.params.xdp_prog;

  err = mlx5e_safe_switch_channels(priv, &new_channels, mlx5e_xdp_update_state);
  if (err)
   goto unlock;
 } else {



  old_prog = xchg(&priv->channels.params.xdp_prog, prog);
 }

 if (old_prog)
  bpf_prog_put(old_prog);

 if (!was_opened && reset)
  mlx5e_set_rq_type(priv->mdev, &priv->channels.params);

 if (!was_opened || reset)
  goto unlock;




 for (i = 0; i < priv->channels.num; i++) {
  struct mlx5e_channel *c = priv->channels.c[i];
  bool xsk_open = test_bit(MLX5E_CHANNEL_STATE_XSK, c->state);

  clear_bit(MLX5E_RQ_STATE_ENABLED, &c->rq.state);
  if (xsk_open)
   clear_bit(MLX5E_RQ_STATE_ENABLED, &c->xskrq.state);
  napi_synchronize(&c->napi);


  old_prog = xchg(&c->rq.xdp_prog, prog);
  if (old_prog)
   bpf_prog_put(old_prog);

  if (xsk_open) {
   old_prog = xchg(&c->xskrq.xdp_prog, prog);
   if (old_prog)
    bpf_prog_put(old_prog);
  }

  set_bit(MLX5E_RQ_STATE_ENABLED, &c->rq.state);
  if (xsk_open)
   set_bit(MLX5E_RQ_STATE_ENABLED, &c->xskrq.state);

  napi_schedule(&c->napi);
 }

unlock:
 mutex_unlock(&priv->state_lock);
 return err;
}
