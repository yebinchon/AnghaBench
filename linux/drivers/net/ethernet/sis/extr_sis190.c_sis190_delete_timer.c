
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int timer; } ;
struct net_device {int dummy; } ;


 int del_timer_sync (int *) ;
 struct sis190_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void sis190_delete_timer(struct net_device *dev)
{
 struct sis190_private *tp = netdev_priv(dev);

 del_timer_sync(&tp->timer);
}
