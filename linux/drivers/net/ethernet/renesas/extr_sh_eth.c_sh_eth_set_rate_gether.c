
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {int speed; } ;
struct net_device {int dummy; } ;


 int GECMR ;
 int GECMR_10 ;
 int GECMR_100 ;
 int GECMR_1000 ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_write (struct net_device*,int ,int ) ;

__attribute__((used)) static void sh_eth_set_rate_gether(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);

 switch (mdp->speed) {
 case 10:
  sh_eth_write(ndev, GECMR_10, GECMR);
  break;
 case 100:
  sh_eth_write(ndev, GECMR_100, GECMR);
  break;
 case 1000:
  sh_eth_write(ndev, GECMR_1000, GECMR);
  break;
 }
}
