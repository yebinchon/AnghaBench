
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; } ;
struct gfar_private {int num_rx_queues; int num_tx_queues; int state; TYPE_2__** tx_queue; TYPE_1__** rx_queue; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; } ;
struct TYPE_4__ {scalar_t__ tx_ring_size; } ;
struct TYPE_3__ {scalar_t__ rx_ring_size; } ;


 int EINVAL ;
 int GFAR_RESETTING ;
 scalar_t__ GFAR_RX_MAX_RING_SIZE ;
 scalar_t__ GFAR_TX_MAX_RING_SIZE ;
 int IFF_UP ;
 int clear_bit_unlock (int ,int *) ;
 int cpu_relax () ;
 int is_power_of_2 (scalar_t__) ;
 int netdev_err (struct net_device*,char*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int startup_gfar (struct net_device*) ;
 int stop_gfar (struct net_device*) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;

__attribute__((used)) static int gfar_sringparam(struct net_device *dev,
      struct ethtool_ringparam *rvals)
{
 struct gfar_private *priv = netdev_priv(dev);
 int err = 0, i;

 if (rvals->rx_pending > GFAR_RX_MAX_RING_SIZE)
  return -EINVAL;

 if (!is_power_of_2(rvals->rx_pending)) {
  netdev_err(dev, "Ring sizes must be a power of 2\n");
  return -EINVAL;
 }

 if (rvals->tx_pending > GFAR_TX_MAX_RING_SIZE)
  return -EINVAL;

 if (!is_power_of_2(rvals->tx_pending)) {
  netdev_err(dev, "Ring sizes must be a power of 2\n");
  return -EINVAL;
 }

 while (test_and_set_bit_lock(GFAR_RESETTING, &priv->state))
  cpu_relax();

 if (dev->flags & IFF_UP)
  stop_gfar(dev);


 for (i = 0; i < priv->num_rx_queues; i++)
  priv->rx_queue[i]->rx_ring_size = rvals->rx_pending;

 for (i = 0; i < priv->num_tx_queues; i++)
  priv->tx_queue[i]->tx_ring_size = rvals->tx_pending;


 if (dev->flags & IFF_UP)
  err = startup_gfar(dev);

 clear_bit_unlock(GFAR_RESETTING, &priv->state);

 return err;
}
