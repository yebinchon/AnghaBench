
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcaspi {int * spi_thread; TYPE_1__* spi_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int SPI_REG_INTR_ENABLE ;
 int free_irq (int ,struct qcaspi*) ;
 int kthread_stop (int *) ;
 struct qcaspi* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int qcaspi_flush_tx_ring (struct qcaspi*) ;
 int qcaspi_write_register (struct qcaspi*,int ,int ,int ) ;
 int wr_verify ;

__attribute__((used)) static int
qcaspi_netdev_close(struct net_device *dev)
{
 struct qcaspi *qca = netdev_priv(dev);

 netif_stop_queue(dev);

 qcaspi_write_register(qca, SPI_REG_INTR_ENABLE, 0, wr_verify);
 free_irq(qca->spi_dev->irq, qca);

 kthread_stop(qca->spi_thread);
 qca->spi_thread = ((void*)0);
 qcaspi_flush_tx_ring(qca);

 return 0;
}
