
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct alx_priv {int msg_enable; } ;


 struct alx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void alx_set_msglevel(struct net_device *netdev, u32 data)
{
 struct alx_priv *alx = netdev_priv(netdev);

 alx->msg_enable = data;
}
