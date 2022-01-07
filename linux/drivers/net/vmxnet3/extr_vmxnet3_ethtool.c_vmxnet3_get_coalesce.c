
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vmxnet3_adapter {TYPE_4__* coal_conf; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int use_adaptive_rx_coalesce; int rx_coalesce_usecs; int rx_max_coalesced_frames; int tx_max_coalesced_frames; } ;
struct TYPE_6__ {int rbc_rate; } ;
struct TYPE_5__ {int rx_depth; int tx_comp_depth; } ;
struct TYPE_7__ {TYPE_2__ coalRbc; TYPE_1__ coalStatic; } ;
struct TYPE_8__ {int coalMode; TYPE_3__ coalPara; } ;


 int EOPNOTSUPP ;




 int VMXNET3_COAL_RBC_USECS (int ) ;
 int VMXNET3_VERSION_GE_3 (struct vmxnet3_adapter*) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
vmxnet3_get_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);

 if (!VMXNET3_VERSION_GE_3(adapter))
  return -EOPNOTSUPP;

 switch (adapter->coal_conf->coalMode) {
 case 130:

  break;
 case 131:
  ec->use_adaptive_rx_coalesce = 1;
  break;
 case 128:
  ec->tx_max_coalesced_frames =
   adapter->coal_conf->coalPara.coalStatic.tx_comp_depth;
  ec->rx_max_coalesced_frames =
   adapter->coal_conf->coalPara.coalStatic.rx_depth;
  break;
 case 129: {
  u32 rbc_rate;

  rbc_rate = adapter->coal_conf->coalPara.coalRbc.rbc_rate;
  ec->rx_coalesce_usecs = VMXNET3_COAL_RBC_USECS(rbc_rate);
 }
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
