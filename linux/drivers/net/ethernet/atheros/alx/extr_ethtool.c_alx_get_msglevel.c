
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct alx_priv {int msg_enable; } ;


 struct alx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 alx_get_msglevel(struct net_device *netdev)
{
 struct alx_priv *alx = netdev_priv(netdev);

 return alx->msg_enable;
}
