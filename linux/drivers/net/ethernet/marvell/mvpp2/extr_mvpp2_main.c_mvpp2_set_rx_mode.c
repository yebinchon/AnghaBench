
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int mc; int uc; } ;
struct mvpp2_port {int id; int priv; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MVPP2_PRS_L2_MULTI_CAST ;
 int MVPP2_PRS_L2_UNI_CAST ;
 scalar_t__ MVPP2_PRS_MAC_MC_FILT_MAX ;
 scalar_t__ MVPP2_PRS_MAC_UC_FILT_MAX ;
 scalar_t__ mvpp2_prs_mac_da_accept_list (struct mvpp2_port*,int *) ;
 int mvpp2_prs_mac_del_all (struct mvpp2_port*) ;
 int mvpp2_prs_mac_promisc_set (int ,int ,int ,int) ;
 int mvpp2_set_rx_promisc (struct mvpp2_port*,int) ;
 scalar_t__ netdev_mc_count (struct net_device*) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 scalar_t__ netdev_uc_count (struct net_device*) ;

__attribute__((used)) static void mvpp2_set_rx_mode(struct net_device *dev)
{
 struct mvpp2_port *port = netdev_priv(dev);


 mvpp2_prs_mac_del_all(port);

 if (dev->flags & IFF_PROMISC) {
  mvpp2_set_rx_promisc(port, 1);
  return;
 }

 mvpp2_set_rx_promisc(port, 0);

 if (netdev_uc_count(dev) > MVPP2_PRS_MAC_UC_FILT_MAX ||
     mvpp2_prs_mac_da_accept_list(port, &dev->uc))
  mvpp2_prs_mac_promisc_set(port->priv, port->id,
       MVPP2_PRS_L2_UNI_CAST, 1);

 if (dev->flags & IFF_ALLMULTI) {
  mvpp2_prs_mac_promisc_set(port->priv, port->id,
       MVPP2_PRS_L2_MULTI_CAST, 1);
  return;
 }

 if (netdev_mc_count(dev) > MVPP2_PRS_MAC_MC_FILT_MAX ||
     mvpp2_prs_mac_da_accept_list(port, &dev->mc))
  mvpp2_prs_mac_promisc_set(port->priv, port->id,
       MVPP2_PRS_L2_MULTI_CAST, 1);
}
