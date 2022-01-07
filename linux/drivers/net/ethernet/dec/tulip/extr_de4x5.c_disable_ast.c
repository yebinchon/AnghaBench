
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct de4x5_private {int timer; } ;


 int del_timer_sync (int *) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
disable_ast(struct net_device *dev)
{
 struct de4x5_private *lp = netdev_priv(dev);
 del_timer_sync(&lp->timer);
}
