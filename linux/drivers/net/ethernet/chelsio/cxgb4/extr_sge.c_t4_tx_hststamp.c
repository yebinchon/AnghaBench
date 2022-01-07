
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct port_info {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int chip; } ;
struct adapter {scalar_t__ ptp_tx_skb; TYPE_1__ params; } ;


 int cxgb4_ptp_read_hwstamp (struct adapter*,struct port_info*) ;
 int is_t4 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int t4_tx_hststamp(struct adapter *adapter, struct sk_buff *skb,
     struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);

 if (!is_t4(adapter->params.chip) && adapter->ptp_tx_skb) {
  cxgb4_ptp_read_hwstamp(adapter, pi);
  kfree_skb(skb);
  return 0;
 }
 return 1;
}
