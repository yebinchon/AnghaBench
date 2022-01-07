
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct net_device {int dummy; } ;
struct hi3110_priv {int hi3110_lock; struct spi_device* spi; } ;
struct can_berr_counter {void* rxerr; void* txerr; } ;


 int HI3110_READ_REC ;
 int HI3110_READ_TEC ;
 void* hi3110_read (struct spi_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hi3110_priv* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int hi3110_get_berr_counter(const struct net_device *net,
       struct can_berr_counter *bec)
{
 struct hi3110_priv *priv = netdev_priv(net);
 struct spi_device *spi = priv->spi;

 mutex_lock(&priv->hi3110_lock);
 bec->txerr = hi3110_read(spi, HI3110_READ_TEC);
 bec->rxerr = hi3110_read(spi, HI3110_READ_REC);
 mutex_unlock(&priv->hi3110_lock);

 return 0;
}
