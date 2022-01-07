
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ionic_lif {scalar_t__ nxqs; int state; } ;
struct ethtool_channels {scalar_t__ combined_count; scalar_t__ tx_count; scalar_t__ rx_count; scalar_t__ other_count; } ;


 int EBUSY ;
 int EINVAL ;
 int IONIC_LIF_QUEUE_RESET ;
 int IONIC_LIF_UP ;
 int clear_bit (int ,int ) ;
 int ionic_open (struct net_device*) ;
 int ionic_stop (struct net_device*) ;
 int ionic_wait_for_bit (struct ionic_lif*,int ) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ionic_set_channels(struct net_device *netdev,
         struct ethtool_channels *ch)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 bool running;

 if (!ch->combined_count || ch->other_count ||
     ch->rx_count || ch->tx_count)
  return -EINVAL;

 if (ch->combined_count == lif->nxqs)
  return 0;

 if (!ionic_wait_for_bit(lif, IONIC_LIF_QUEUE_RESET))
  return -EBUSY;

 running = test_bit(IONIC_LIF_UP, lif->state);
 if (running)
  ionic_stop(netdev);

 lif->nxqs = ch->combined_count;

 if (running)
  ionic_open(netdev);
 clear_bit(IONIC_LIF_QUEUE_RESET, lif->state);

 return 0;
}
