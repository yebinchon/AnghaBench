
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {struct net_device* netdev; } ;
struct net_device {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int xlgmac_add_mac_addresses (struct xlgmac_pdata*) ;
 int xlgmac_set_all_multicast_mode (struct xlgmac_pdata*,unsigned int) ;
 int xlgmac_set_promiscuous_mode (struct xlgmac_pdata*,unsigned int) ;

__attribute__((used)) static int xlgmac_config_rx_mode(struct xlgmac_pdata *pdata)
{
 struct net_device *netdev = pdata->netdev;
 unsigned int pr_mode, am_mode;

 pr_mode = ((netdev->flags & IFF_PROMISC) != 0);
 am_mode = ((netdev->flags & IFF_ALLMULTI) != 0);

 xlgmac_set_promiscuous_mode(pdata, pr_mode);
 xlgmac_set_all_multicast_mode(pdata, am_mode);

 xlgmac_add_mac_addresses(pdata);

 return 0;
}
