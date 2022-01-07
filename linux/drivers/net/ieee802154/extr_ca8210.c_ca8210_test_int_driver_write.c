
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ca8210_test {int readq; int up_fifo; } ;
struct ca8210_priv {struct ca8210_test test; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*,...) ;
 int kfifo_in (int *,char**,int) ;
 char* kmemdup (int const*,size_t,int ) ;
 struct ca8210_priv* spi_get_drvdata (void*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int ca8210_test_int_driver_write(
 const u8 *buf,
 size_t len,
 void *spi
)
{
 struct ca8210_priv *priv = spi_get_drvdata(spi);
 struct ca8210_test *test = &priv->test;
 char *fifo_buffer;
 int i;

 dev_dbg(
  &priv->spi->dev,
  "test_interface: Buffering upstream message:\n"
 );
 for (i = 0; i < len; i++)
  dev_dbg(&priv->spi->dev, "%#03x\n", buf[i]);

 fifo_buffer = kmemdup(buf, len, GFP_KERNEL);
 if (!fifo_buffer)
  return -ENOMEM;
 kfifo_in(&test->up_fifo, &fifo_buffer, 4);
 wake_up_interruptible(&priv->test.readq);

 return 0;
}
