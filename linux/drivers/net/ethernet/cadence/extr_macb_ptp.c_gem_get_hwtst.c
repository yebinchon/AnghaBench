
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hwtstamp_config {int dummy; } ;
struct macb {int hw_dma_cap; struct hwtstamp_config tstamp_config; } ;
struct ifreq {int ifr_data; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 int HW_DMA_CAP_PTP ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct macb* netdev_priv (struct net_device*) ;

int gem_get_hwtst(struct net_device *dev, struct ifreq *rq)
{
 struct hwtstamp_config *tstamp_config;
 struct macb *bp = netdev_priv(dev);

 tstamp_config = &bp->tstamp_config;
 if ((bp->hw_dma_cap & HW_DMA_CAP_PTP) == 0)
  return -EOPNOTSUPP;

 if (copy_to_user(rq->ifr_data, tstamp_config, sizeof(*tstamp_config)))
  return -EFAULT;
 else
  return 0;
}
