
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rionet_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct rionet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 rionet_get_msglevel(struct net_device *ndev)
{
 struct rionet_private *rnet = netdev_priv(ndev);

 return rnet->msg_enable;
}
