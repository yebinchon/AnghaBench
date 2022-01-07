
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct dpaa2_eth_priv {int xdp_prog; } ;


 int EINVAL ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int set_rx_mfl (struct dpaa2_eth_priv*,int,int) ;
 int xdp_mtu_valid (struct dpaa2_eth_priv*,int) ;

__attribute__((used)) static int dpaa2_eth_change_mtu(struct net_device *dev, int new_mtu)
{
 struct dpaa2_eth_priv *priv = netdev_priv(dev);
 int err;

 if (!priv->xdp_prog)
  goto out;

 if (!xdp_mtu_valid(priv, new_mtu))
  return -EINVAL;

 err = set_rx_mfl(priv, new_mtu, 1);
 if (err)
  return err;

out:
 dev->mtu = new_mtu;
 return 0;
}
