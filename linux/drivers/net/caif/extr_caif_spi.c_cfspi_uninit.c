
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int * pa_tx; int * va_tx; int pa_rx; int va_rx; } ;
struct cfspi {int wq; int wait; int state; TYPE_1__ xfer; int * ndev; int list; } ;


 int SPI_TERMINATE ;
 int cfspi_list_lock ;
 int destroy_workqueue (int ) ;
 int dev_debugfs_rem (struct cfspi*) ;
 int dma_free (struct cfspi*,int ,int ) ;
 int list_del (int *) ;
 struct cfspi* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cfspi_uninit(struct net_device *dev)
{
 struct cfspi *cfspi = netdev_priv(dev);


 spin_lock(&cfspi_list_lock);
 list_del(&cfspi->list);
 spin_unlock(&cfspi_list_lock);

 cfspi->ndev = ((void*)0);

 dma_free(cfspi, cfspi->xfer.va_rx, cfspi->xfer.pa_rx);
 dma_free(cfspi, cfspi->xfer.va_tx[0], cfspi->xfer.pa_tx[0]);
 set_bit(SPI_TERMINATE, &cfspi->state);
 wake_up_interruptible(&cfspi->wait);
 destroy_workqueue(cfspi->wq);

 dev_debugfs_rem(cfspi);
 return;
}
