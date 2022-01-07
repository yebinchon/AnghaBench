
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uli526x_board_info {scalar_t__ link_failed; } ;
struct net_device {int dummy; } ;


 struct uli526x_board_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 netdev_get_link(struct net_device *dev) {
 struct uli526x_board_info *np = netdev_priv(dev);

 if(np->link_failed)
  return 0;
 else
  return 1;
}
