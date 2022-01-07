
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct de4x5_private {int local_state; int media; int tcount; int linkOK; } ;


 int DE4X5_AUTOSENSE_MS ;
 int INIT ;
 int TIMER_CB ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
de4x5_suspect_state(struct net_device *dev, int timeout, int prev_state,
        int (*fn)(struct net_device *, int),
        int (*asfn)(struct net_device *))
{
    struct de4x5_private *lp = netdev_priv(dev);
    int next_tick = DE4X5_AUTOSENSE_MS;
    int linkBad;

    switch (lp->local_state) {
    case 1:
 if (lp->linkOK) {
     lp->media = prev_state;
 } else {
     lp->local_state++;
     next_tick = asfn(dev);
 }
 break;

    case 2:
 linkBad = fn(dev, timeout);
 if (linkBad < 0) {
     next_tick = linkBad & ~TIMER_CB;
 } else if (!linkBad) {
     lp->local_state--;
     lp->media = prev_state;
 } else {
     lp->media = INIT;
     lp->tcount++;
 }
    }

    return next_tick;
}
