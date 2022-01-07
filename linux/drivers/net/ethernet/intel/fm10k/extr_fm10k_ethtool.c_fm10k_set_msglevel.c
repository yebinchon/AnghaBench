
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fm10k_intfc {int msg_enable; } ;


 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fm10k_set_msglevel(struct net_device *netdev, u32 data)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);

 interface->msg_enable = data;
}
