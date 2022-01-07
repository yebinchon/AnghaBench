
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {int speed; } ;
struct net_device {int dummy; } ;


 int GECMR ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_write (struct net_device*,int,int ) ;

__attribute__((used)) static void sh_eth_set_rate_giga(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);

 switch (mdp->speed) {
 case 10:
  sh_eth_write(ndev, 0x00000000, GECMR);
  break;
 case 100:
  sh_eth_write(ndev, 0x00000010, GECMR);
  break;
 case 1000:
  sh_eth_write(ndev, 0x00000020, GECMR);
  break;
 }
}
