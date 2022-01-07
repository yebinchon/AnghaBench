
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int phylink; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;





 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phylink_mii_ioctl (int ,struct ifreq*,int) ;
 int stmmac_hwtstamp_get (struct net_device*,struct ifreq*) ;
 int stmmac_hwtstamp_set (struct net_device*,struct ifreq*) ;

__attribute__((used)) static int stmmac_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct stmmac_priv *priv = netdev_priv (dev);
 int ret = -EOPNOTSUPP;

 if (!netif_running(dev))
  return -EINVAL;

 switch (cmd) {
 case 131:
 case 130:
 case 128:
  ret = phylink_mii_ioctl(priv->phylink, rq, cmd);
  break;
 case 129:
  ret = stmmac_hwtstamp_set(dev, rq);
  break;
 case 132:
  ret = stmmac_hwtstamp_get(dev, rq);
  break;
 default:
  break;
 }

 return ret;
}
