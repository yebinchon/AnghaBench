
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct iavf_ring {int dummy; } ;
struct iavf_adapter {unsigned int num_active_queues; struct iavf_ring* rx_rings; struct iavf_ring* tx_rings; } ;
struct ethtool_stats {int dummy; } ;


 unsigned int IAVF_MAX_REQ_QUEUES ;
 int iavf_add_ethtool_stats (int **,struct iavf_adapter*,int ) ;
 int iavf_add_queue_stats (int **,struct iavf_ring*) ;
 int iavf_gstrings_stats ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void iavf_get_ethtool_stats(struct net_device *netdev,
       struct ethtool_stats *stats, u64 *data)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);
 unsigned int i;

 iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);

 rcu_read_lock();
 for (i = 0; i < IAVF_MAX_REQ_QUEUES; i++) {
  struct iavf_ring *ring;


  ring = (i < adapter->num_active_queues ?
   &adapter->tx_rings[i] : ((void*)0));
  iavf_add_queue_stats(&data, ring);


  ring = (i < adapter->num_active_queues ?
   &adapter->rx_rings[i] : ((void*)0));
  iavf_add_queue_stats(&data, ring);
 }
 rcu_read_unlock();
}
