
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nicvf {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct nicvf* netdev_priv (struct net_device*) ;

__attribute__((used)) static void nicvf_set_msglevel(struct net_device *netdev, u32 lvl)
{
 struct nicvf *nic = netdev_priv(netdev);

 nic->msg_enable = lvl;
}
