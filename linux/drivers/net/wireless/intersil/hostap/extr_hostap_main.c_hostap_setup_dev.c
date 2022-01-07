
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int * ethtool_ops; int mtu; int * netdev_ops; int priv_flags; int * header_ops; int type; int watchdog_timeo; int * wireless_handlers; TYPE_1__* wireless_data; int max_mtu; int min_mtu; } ;
struct TYPE_4__ {int * spy_data; } ;
struct hostap_interface {TYPE_1__ wireless_data; int spy_data; } ;
struct TYPE_5__ {int mtu; } ;
typedef TYPE_2__ local_info_t ;


 int ARPHRD_IEEE80211 ;


 int IFF_NO_QUEUE ;
 int IFF_TX_SKB_SHARING ;
 int PRISM2_MAX_MTU ;
 int PRISM2_MIN_MTU ;
 int TX_TIMEOUT ;
 int ether_setup (struct net_device*) ;
 int hostap_80211_ops ;
 int hostap_iw_handler_def ;
 int hostap_master_ops ;
 int hostap_mgmt_netdev_ops ;
 int hostap_netdev_ops ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int prism2_ethtool_ops ;

void hostap_setup_dev(struct net_device *dev, local_info_t *local,
        int type)
{
 struct hostap_interface *iface;

 iface = netdev_priv(dev);
 ether_setup(dev);
 dev->min_mtu = PRISM2_MIN_MTU;
 dev->max_mtu = PRISM2_MAX_MTU;
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;


 if (iface) {


  iface->wireless_data.spy_data = &iface->spy_data;
  dev->wireless_data = &iface->wireless_data;
 }
 dev->wireless_handlers = &hostap_iw_handler_def;
 dev->watchdog_timeo = TX_TIMEOUT;

 switch(type) {
 case 129:
  dev->priv_flags |= IFF_NO_QUEUE;
  dev->netdev_ops = &hostap_mgmt_netdev_ops;
  dev->type = ARPHRD_IEEE80211;
  dev->header_ops = &hostap_80211_ops;
  break;
 case 128:
  dev->netdev_ops = &hostap_master_ops;
  break;
 default:
  dev->priv_flags |= IFF_NO_QUEUE;
  dev->netdev_ops = &hostap_netdev_ops;
 }

 dev->mtu = local->mtu;


 dev->ethtool_ops = &prism2_ethtool_ops;

}
