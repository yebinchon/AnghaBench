
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int rxerr; int txerr; } ;
struct mcba_priv {TYPE_1__ bec; } ;
struct can_berr_counter {int rxerr; int txerr; } ;


 struct mcba_priv* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int mcba_net_get_berr_counter(const struct net_device *netdev,
         struct can_berr_counter *bec)
{
 struct mcba_priv *priv = netdev_priv(netdev);

 bec->txerr = priv->bec.txerr;
 bec->rxerr = priv->bec.rxerr;

 return 0;
}
