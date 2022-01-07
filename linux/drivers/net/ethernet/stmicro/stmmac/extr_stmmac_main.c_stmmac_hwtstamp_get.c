
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ atime_stamp; scalar_t__ time_stamp; } ;
struct hwtstamp_config {int dummy; } ;
struct stmmac_priv {TYPE_1__ dma_cap; struct hwtstamp_config tstamp_config; } ;
struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int stmmac_hwtstamp_get(struct net_device *dev, struct ifreq *ifr)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 struct hwtstamp_config *config = &priv->tstamp_config;

 if (!(priv->dma_cap.time_stamp || priv->dma_cap.atime_stamp))
  return -EOPNOTSUPP;

 return copy_to_user(ifr->ifr_data, config,
       sizeof(*config)) ? -EFAULT : 0;
}
