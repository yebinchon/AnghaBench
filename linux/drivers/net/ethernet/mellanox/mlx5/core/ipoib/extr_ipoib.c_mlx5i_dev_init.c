
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int* dev_addr; } ;
struct TYPE_2__ {int qpn; } ;
struct mlx5i_priv {TYPE_1__ qp; } ;
struct mlx5e_priv {struct mlx5i_priv* ppriv; } ;


 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mlx5i_pkey_add_qpn (struct net_device*,int) ;

int mlx5i_dev_init(struct net_device *dev)
{
 struct mlx5e_priv *priv = mlx5i_epriv(dev);
 struct mlx5i_priv *ipriv = priv->ppriv;


 dev->dev_addr[1] = (ipriv->qp.qpn >> 16) & 0xff;
 dev->dev_addr[2] = (ipriv->qp.qpn >> 8) & 0xff;
 dev->dev_addr[3] = (ipriv->qp.qpn) & 0xff;


 mlx5i_pkey_add_qpn(dev ,ipriv->qp.qpn);

 return 0;
}
