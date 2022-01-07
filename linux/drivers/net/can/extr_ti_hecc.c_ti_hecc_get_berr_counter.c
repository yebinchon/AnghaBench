
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_hecc_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct can_berr_counter {void* rxerr; void* txerr; } ;


 int HECC_CANREC ;
 int HECC_CANTEC ;
 void* hecc_read (struct ti_hecc_priv*,int ) ;
 struct ti_hecc_priv* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int ti_hecc_get_berr_counter(const struct net_device *ndev,
        struct can_berr_counter *bec)
{
 struct ti_hecc_priv *priv = netdev_priv(ndev);

 bec->txerr = hecc_read(priv, HECC_CANTEC);
 bec->rxerr = hecc_read(priv, HECC_CANREC);

 return 0;
}
