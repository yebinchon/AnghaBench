
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_eth_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct sh_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 sh_eth_get_msglevel(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 return mdp->msg_enable;
}
