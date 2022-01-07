
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {int (* read_reg ) (struct sja1000_priv*,int ) ;} ;
struct net_device {int dummy; } ;
struct can_berr_counter {int rxerr; int txerr; } ;


 int SJA1000_RXERR ;
 int SJA1000_TXERR ;
 struct sja1000_priv* netdev_priv (struct net_device const*) ;
 int stub1 (struct sja1000_priv*,int ) ;
 int stub2 (struct sja1000_priv*,int ) ;

__attribute__((used)) static int sja1000_get_berr_counter(const struct net_device *dev,
        struct can_berr_counter *bec)
{
 struct sja1000_priv *priv = netdev_priv(dev);

 bec->txerr = priv->read_reg(priv, SJA1000_TXERR);
 bec->rxerr = priv->read_reg(priv, SJA1000_RXERR);

 return 0;
}
