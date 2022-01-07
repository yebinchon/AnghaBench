
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iavf_adapter {int num_active_queues; } ;
struct ethtool_channels {int combined_count; void* other_count; void* max_other; int max_combined; } ;


 int IAVF_MAX_REQ_QUEUES ;
 void* NONQ_VECS ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void iavf_get_channels(struct net_device *netdev,
         struct ethtool_channels *ch)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);


 ch->max_combined = IAVF_MAX_REQ_QUEUES;

 ch->max_other = NONQ_VECS;
 ch->other_count = NONQ_VECS;

 ch->combined_count = adapter->num_active_queues;
}
