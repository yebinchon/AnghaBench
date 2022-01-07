
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ca8210_test {int up_fifo; int ca8210_dfs_spi_int; } ;
struct ca8210_priv {TYPE_1__* spi; struct ca8210_test test; } ;
struct TYPE_2__ {int dev; } ;


 int debugfs_remove (int ) ;
 int dev_info (int *,char*) ;
 int kfifo_free (int *) ;

__attribute__((used)) static void ca8210_test_interface_clear(struct ca8210_priv *priv)
{
 struct ca8210_test *test = &priv->test;

 debugfs_remove(test->ca8210_dfs_spi_int);
 kfifo_free(&test->up_fifo);
 dev_info(&priv->spi->dev, "Test interface removed\n");
}
