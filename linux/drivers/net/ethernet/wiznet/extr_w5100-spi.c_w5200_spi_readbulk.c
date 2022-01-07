
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct w5200_spi_priv {int* cmd_buf; int cmd_lock; } ;
struct spi_transfer {int* tx_buf; int len; int * rx_buf; } ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (struct spi_transfer*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync_transfer (struct spi_device*,struct spi_transfer*,int ) ;
 struct spi_device* to_spi_device (int ) ;
 struct w5200_spi_priv* w5200_spi_priv (struct net_device*) ;

__attribute__((used)) static int w5200_spi_readbulk(struct net_device *ndev, u32 addr, u8 *buf,
         int len)
{
 struct spi_device *spi = to_spi_device(ndev->dev.parent);
 struct w5200_spi_priv *spi_priv = w5200_spi_priv(ndev);
 struct spi_transfer xfer[] = {
  {
   .tx_buf = spi_priv->cmd_buf,
   .len = sizeof(spi_priv->cmd_buf),
  },
  {
   .rx_buf = buf,
   .len = len,
  },
 };
 int ret;

 mutex_lock(&spi_priv->cmd_lock);

 spi_priv->cmd_buf[0] = addr >> 8;
 spi_priv->cmd_buf[1] = addr;
 spi_priv->cmd_buf[2] = len >> 8;
 spi_priv->cmd_buf[3] = len;
 ret = spi_sync_transfer(spi, xfer, ARRAY_SIZE(xfer));

 mutex_unlock(&spi_priv->cmd_lock);

 return ret;
}
