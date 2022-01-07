
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ibmveth_adapter {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_3__ {int offset; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int IBMVETH_GET_STAT (struct ibmveth_adapter*,int ) ;
 TYPE_1__* ibmveth_stats ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ibmveth_get_ethtool_stats(struct net_device *dev,
          struct ethtool_stats *stats, u64 *data)
{
 int i;
 struct ibmveth_adapter *adapter = netdev_priv(dev);

 for (i = 0; i < ARRAY_SIZE(ibmveth_stats); i++)
  data[i] = IBMVETH_GET_STAT(adapter, ibmveth_stats[i].offset);
}
