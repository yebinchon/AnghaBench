
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5200_spi_priv {int cmd_lock; } ;
struct net_device {int dummy; } ;


 int mutex_init (int *) ;
 struct w5200_spi_priv* w5200_spi_priv (struct net_device*) ;

__attribute__((used)) static int w5200_spi_init(struct net_device *ndev)
{
 struct w5200_spi_priv *spi_priv = w5200_spi_priv(ndev);

 mutex_init(&spi_priv->cmd_lock);

 return 0;
}
