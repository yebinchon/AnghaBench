
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct aq_nic_s {int dummy; } ;


 int aq_nic_xmit (struct aq_nic_s*,struct sk_buff*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aq_ndev_start_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);

 return aq_nic_xmit(aq_nic, skb);
}
