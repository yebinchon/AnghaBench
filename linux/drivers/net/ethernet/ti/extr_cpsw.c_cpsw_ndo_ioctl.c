
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {TYPE_1__* slaves; } ;
struct TYPE_2__ {int phy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int cpsw_hwtstamp_get (struct net_device*,struct ifreq*) ;
 int cpsw_hwtstamp_set (struct net_device*,struct ifreq*) ;
 int cpsw_slave_index (struct cpsw_common*,struct cpsw_priv*) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int cpsw_ndo_ioctl(struct net_device *dev, struct ifreq *req, int cmd)
{
 struct cpsw_priv *priv = netdev_priv(dev);
 struct cpsw_common *cpsw = priv->cpsw;
 int slave_no = cpsw_slave_index(cpsw, priv);

 if (!netif_running(dev))
  return -EINVAL;

 switch (cmd) {
 case 128:
  return cpsw_hwtstamp_set(dev, req);
 case 129:
  return cpsw_hwtstamp_get(dev, req);
 }

 if (!cpsw->slaves[slave_no].phy)
  return -EOPNOTSUPP;
 return phy_mii_ioctl(cpsw->slaves[slave_no].phy, req, cmd);
}
