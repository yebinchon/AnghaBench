
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phylink_link_state {int pause; int duplex; int speed; int interface; } ;
struct TYPE_4__ {int interface; } ;
struct phylink {int phydev; TYPE_2__ phy_state; int link_an_mode; int config; TYPE_1__* ops; int cur_interface; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* mac_link_up ) (int ,int ,int ,int ) ;} ;


 int netif_carrier_on (struct net_device*) ;
 int phy_duplex_to_str (int ) ;
 int phy_speed_to_str (int ) ;
 int phylink_info (struct phylink*,char*,int ,int ,int ) ;
 int phylink_pause_to_str (int ) ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void phylink_mac_link_up(struct phylink *pl,
    struct phylink_link_state link_state)
{
 struct net_device *ndev = pl->netdev;

 pl->cur_interface = link_state.interface;
 pl->ops->mac_link_up(pl->config, pl->link_an_mode,
        pl->phy_state.interface,
        pl->phydev);

 if (ndev)
  netif_carrier_on(ndev);

 phylink_info(pl,
       "Link is Up - %s/%s - flow control %s\n",
       phy_speed_to_str(link_state.speed),
       phy_duplex_to_str(link_state.duplex),
       phylink_pause_to_str(link_state.pause));
}
