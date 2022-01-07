
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port_info {size_t first_qset; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;
struct TYPE_4__ {TYPE_1__* ethrxq; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {int rspq; } ;


 struct port_info* netdev_priv (struct net_device*) ;
 int set_rxq_intr_params (struct adapter*,int *,int ,int ) ;

__attribute__((used)) static int cxgb4vf_set_coalesce(struct net_device *dev,
    struct ethtool_coalesce *coalesce)
{
 const struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;

 return set_rxq_intr_params(adapter,
       &adapter->sge.ethrxq[pi->first_qset].rspq,
       coalesce->rx_coalesce_usecs,
       coalesce->rx_max_coalesced_frames);
}
