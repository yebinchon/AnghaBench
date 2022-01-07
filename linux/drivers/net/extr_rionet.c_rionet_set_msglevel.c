
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rionet_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct rionet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void rionet_set_msglevel(struct net_device *ndev, u32 value)
{
 struct rionet_private *rnet = netdev_priv(ndev);

 rnet->msg_enable = value;
}
