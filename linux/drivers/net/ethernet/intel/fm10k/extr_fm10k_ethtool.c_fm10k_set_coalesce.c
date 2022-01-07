
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {void* itr; } ;
struct TYPE_3__ {void* itr; } ;
struct fm10k_q_vector {TYPE_2__ rx; TYPE_1__ tx; } ;
struct fm10k_intfc {int num_q_vectors; struct fm10k_q_vector** q_vector; void* rx_itr; void* tx_itr; } ;
struct ethtool_coalesce {scalar_t__ rx_coalesce_usecs; scalar_t__ tx_coalesce_usecs; scalar_t__ use_adaptive_rx_coalesce; scalar_t__ use_adaptive_tx_coalesce; } ;


 int EINVAL ;
 int FM10K_ITR_ADAPTIVE ;
 scalar_t__ FM10K_ITR_MAX ;
 int FM10K_RX_ITR_DEFAULT ;
 int FM10K_TX_ITR_DEFAULT ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fm10k_set_coalesce(struct net_device *dev,
         struct ethtool_coalesce *ec)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 u16 tx_itr, rx_itr;
 int i;


 if ((ec->rx_coalesce_usecs > FM10K_ITR_MAX) ||
     (ec->tx_coalesce_usecs > FM10K_ITR_MAX))
  return -EINVAL;


 tx_itr = ec->tx_coalesce_usecs;
 rx_itr = ec->rx_coalesce_usecs;


 if (ec->use_adaptive_tx_coalesce)
  tx_itr = FM10K_ITR_ADAPTIVE | FM10K_TX_ITR_DEFAULT;

 if (ec->use_adaptive_rx_coalesce)
  rx_itr = FM10K_ITR_ADAPTIVE | FM10K_RX_ITR_DEFAULT;


 interface->tx_itr = tx_itr;
 interface->rx_itr = rx_itr;


 for (i = 0; i < interface->num_q_vectors; i++) {
  struct fm10k_q_vector *qv = interface->q_vector[i];

  qv->tx.itr = tx_itr;
  qv->rx.itr = rx_itr;
 }

 return 0;
}
