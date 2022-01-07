
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {int dummy; } ;
struct net_device {int dummy; } ;


 int ARSTR ;
 int ARSTR_ARST ;
 int mdelay (int) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_tsu_write (struct sh_eth_private*,int ,int ) ;

__attribute__((used)) static void sh_eth_chip_reset(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);


 sh_eth_tsu_write(mdp, ARSTR_ARST, ARSTR);
 mdelay(1);
}
