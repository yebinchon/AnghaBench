
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {int rx_mode; int curr_rx_cfg; } ;
struct net_device {int flags; } ;


 int DEF_RX_ACCEPT ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int PP_RxCFG ;
 int PP_RxCTL ;
 int RX_ALL_ACCEPT ;
 int RX_CRC_ERROR_ENBL ;
 int RX_EXTRA_DATA_ENBL ;
 int RX_MULTCAST_ACCEPT ;
 int RX_RUNT_ENBL ;
 int netdev_mc_empty (struct net_device*) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int writereg (struct net_device*,int ,int) ;

__attribute__((used)) static void set_multicast_list(struct net_device *dev)
{
 struct net_local *lp = netdev_priv(dev);

 if(dev->flags&IFF_PROMISC)
 {
  lp->rx_mode = RX_ALL_ACCEPT;
 } else if ((dev->flags & IFF_ALLMULTI) || !netdev_mc_empty(dev)) {


  lp->rx_mode = RX_MULTCAST_ACCEPT;
 }
 else
  lp->rx_mode = 0;

 writereg(dev, PP_RxCTL, DEF_RX_ACCEPT | lp->rx_mode);


 writereg(dev, PP_RxCFG, lp->curr_rx_cfg |
      (lp->rx_mode == RX_ALL_ACCEPT? (RX_CRC_ERROR_ENBL|RX_RUNT_ENBL|RX_EXTRA_DATA_ENBL) : 0));
}
