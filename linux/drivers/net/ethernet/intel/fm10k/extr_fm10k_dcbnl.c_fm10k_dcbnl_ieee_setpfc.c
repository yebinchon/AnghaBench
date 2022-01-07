
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ieee_pfc {int pfc_en; } ;
struct fm10k_intfc {int pfc_en; } ;


 int fm10k_update_rx_drop_en (struct fm10k_intfc*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int fm10k_dcbnl_ieee_setpfc(struct net_device *dev, struct ieee_pfc *pfc)
{
 struct fm10k_intfc *interface = netdev_priv(dev);


 interface->pfc_en = pfc->pfc_en;


 if (netif_running(dev))
  fm10k_update_rx_drop_en(interface);

 return 0;
}
