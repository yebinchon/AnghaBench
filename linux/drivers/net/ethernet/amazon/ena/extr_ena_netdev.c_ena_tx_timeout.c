
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int tx_timeout; } ;
struct ena_adapter {int syncp; TYPE_1__ dev_stats; int reset_reason; int flags; } ;


 int ENA_FLAG_TRIGGER_RESET ;
 int ENA_REGS_RESET_OS_NETDEV_WD ;
 struct ena_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct ena_adapter*,int ,struct net_device*,char*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int tx_err ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void ena_tx_timeout(struct net_device *dev)
{
 struct ena_adapter *adapter = netdev_priv(dev);





 if (test_and_set_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags))
  return;

 adapter->reset_reason = ENA_REGS_RESET_OS_NETDEV_WD;
 u64_stats_update_begin(&adapter->syncp);
 adapter->dev_stats.tx_timeout++;
 u64_stats_update_end(&adapter->syncp);

 netif_err(adapter, tx_err, dev, "Transmit time out\n");
}
