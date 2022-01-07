
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ xdp_prog; } ;
struct mlx5e_channels {int num; struct mlx5e_channel** c; TYPE_1__ params; } ;
struct mlx5e_priv {struct mlx5e_channels channels; int state; } ;
struct TYPE_4__ {int state; } ;
struct mlx5e_channel {TYPE_2__ rq; } ;


 int MLX5E_RQ_STATE_NO_CSUM_COMPLETE ;
 int MLX5E_STATE_OPENED ;
 int __clear_bit (int ,int *) ;
 int __set_bit (int ,int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int set_pflag_rx_no_csum_complete(struct net_device *netdev, bool enable)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5e_channels *channels = &priv->channels;
 struct mlx5e_channel *c;
 int i;

 if (!test_bit(MLX5E_STATE_OPENED, &priv->state) ||
     priv->channels.params.xdp_prog)
  return 0;

 for (i = 0; i < channels->num; i++) {
  c = channels->c[i];
  if (enable)
   __set_bit(MLX5E_RQ_STATE_NO_CSUM_COMPLETE, &c->rq.state);
  else
   __clear_bit(MLX5E_RQ_STATE_NO_CSUM_COMPLETE, &c->rq.state);
 }

 return 0;
}
