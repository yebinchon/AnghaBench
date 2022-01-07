
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bittiming; } ;
struct peak_canfd_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 struct peak_canfd_priv* netdev_priv (struct net_device*) ;
 int pucan_set_timing_slow (struct peak_canfd_priv*,int *) ;

__attribute__((used)) static int peak_canfd_set_bittiming(struct net_device *ndev)
{
 struct peak_canfd_priv *priv = netdev_priv(ndev);

 return pucan_set_timing_slow(priv, &priv->can.bittiming);
}
