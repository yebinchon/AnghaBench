
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clock; } ;
struct ravb_private {TYPE_1__ ptp; } ;
struct net_device {int dummy; } ;


 int GIC ;
 int GIS ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ptp_clock_unregister (int ) ;
 int ravb_write (struct net_device*,int ,int ) ;

void ravb_ptp_stop(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);

 ravb_write(ndev, 0, GIC);
 ravb_write(ndev, 0, GIS);

 ptp_clock_unregister(priv->ptp.clock);
}
