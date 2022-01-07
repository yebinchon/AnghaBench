
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int qpn; } ;
struct mlx5i_priv {TYPE_1__ qp; } ;
struct mlx5e_priv {struct mlx5i_priv* ppriv; } ;


 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mlx5i_pkey_del_qpn (struct net_device*,int ) ;
 int mlx5i_uninit_underlay_qp (struct mlx5e_priv*) ;

void mlx5i_dev_cleanup(struct net_device *dev)
{
 struct mlx5e_priv *priv = mlx5i_epriv(dev);
 struct mlx5i_priv *ipriv = priv->ppriv;

 mlx5i_uninit_underlay_qp(priv);


 mlx5i_pkey_del_qpn(dev, ipriv->qp.qpn);
}
