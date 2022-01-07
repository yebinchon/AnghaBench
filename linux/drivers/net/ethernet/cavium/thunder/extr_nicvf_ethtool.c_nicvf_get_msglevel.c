
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nicvf {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct nicvf* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 nicvf_get_msglevel(struct net_device *netdev)
{
 struct nicvf *nic = netdev_priv(netdev);

 return nic->msg_enable;
}
