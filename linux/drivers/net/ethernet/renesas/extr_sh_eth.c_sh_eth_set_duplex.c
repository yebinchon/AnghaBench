
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {scalar_t__ duplex; } ;
struct net_device {int dummy; } ;


 int ECMR ;
 int ECMR_DM ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_modify (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static void sh_eth_set_duplex(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);

 sh_eth_modify(ndev, ECMR, ECMR_DM, mdp->duplex ? ECMR_DM : 0);
}
