
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int flags; } ;
struct TYPE_6__ {int * eth_regs; } ;
typedef TYPE_1__ pegasus_t ;


 size_t EthCtrl0 ;
 size_t EthCtrl2 ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RX_MULTICAST ;
 int RX_PROMISCUOUS ;
 int link ;
 int netdev_mc_empty (struct net_device*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_dbg (TYPE_1__*,int ,struct net_device*,char*) ;
 int netif_info (TYPE_1__*,int ,struct net_device*,char*) ;
 int update_eth_regs_async (TYPE_1__*) ;

__attribute__((used)) static void pegasus_set_multicast(struct net_device *net)
{
 pegasus_t *pegasus = netdev_priv(net);

 if (net->flags & IFF_PROMISC) {
  pegasus->eth_regs[EthCtrl2] |= RX_PROMISCUOUS;
  netif_info(pegasus, link, net, "Promiscuous mode enabled\n");
 } else if (!netdev_mc_empty(net) || (net->flags & IFF_ALLMULTI)) {
  pegasus->eth_regs[EthCtrl0] |= RX_MULTICAST;
  pegasus->eth_regs[EthCtrl2] &= ~RX_PROMISCUOUS;
  netif_dbg(pegasus, link, net, "set allmulti\n");
 } else {
  pegasus->eth_regs[EthCtrl0] &= ~RX_MULTICAST;
  pegasus->eth_regs[EthCtrl2] &= ~RX_PROMISCUOUS;
 }
 update_eth_regs_async(pegasus);
}
