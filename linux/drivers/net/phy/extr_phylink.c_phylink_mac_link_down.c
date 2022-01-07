
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phylink {int cur_interface; int link_an_mode; int config; TYPE_1__* ops; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* mac_link_down ) (int ,int ,int ) ;} ;


 int netif_carrier_off (struct net_device*) ;
 int phylink_info (struct phylink*,char*) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void phylink_mac_link_down(struct phylink *pl)
{
 struct net_device *ndev = pl->netdev;

 if (ndev)
  netif_carrier_off(ndev);
 pl->ops->mac_link_down(pl->config, pl->link_an_mode,
          pl->cur_interface);
 phylink_info(pl, "Link is Down\n");
}
