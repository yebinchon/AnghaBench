
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int flags; int num_rx_rings; int num_tx_rings; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int ETH_SS_STATS ;
 int NIU_FLAGS_XMAC ;
 int NUM_BMAC_STAT_KEYS ;
 int NUM_RXCHAN_STAT_KEYS ;
 int NUM_TXCHAN_STAT_KEYS ;
 int NUM_XMAC_STAT_KEYS ;
 struct niu* netdev_priv (struct net_device*) ;

__attribute__((used)) static int niu_get_sset_count(struct net_device *dev, int stringset)
{
 struct niu *np = netdev_priv(dev);

 if (stringset != ETH_SS_STATS)
  return -EINVAL;

 return (np->flags & NIU_FLAGS_XMAC ?
   NUM_XMAC_STAT_KEYS :
   NUM_BMAC_STAT_KEYS) +
  (np->num_rx_rings * NUM_RXCHAN_STAT_KEYS) +
  (np->num_tx_rings * NUM_TXCHAN_STAT_KEYS);
}
