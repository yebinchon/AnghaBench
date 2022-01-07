
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct de4x5_private {int timeout; } ;


 int TIMER_CB ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
wait_for_link(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);

    if (lp->timeout < 0) {
 lp->timeout = 1;
    }

    if (lp->timeout--) {
 return TIMER_CB;
    } else {
 lp->timeout = -1;
    }

    return 0;
}
