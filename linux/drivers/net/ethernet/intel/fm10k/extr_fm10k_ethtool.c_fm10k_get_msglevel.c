
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fm10k_intfc {int msg_enable; } ;


 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 fm10k_get_msglevel(struct net_device *netdev)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);

 return interface->msg_enable;
}
