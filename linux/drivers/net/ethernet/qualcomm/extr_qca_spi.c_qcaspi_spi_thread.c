
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int write_buf_err; int read_buf_err; int device_reset; } ;
struct TYPE_3__ {size_t head; int ** skb; } ;
struct qcaspi {scalar_t__ intr_req; scalar_t__ intr_svc; scalar_t__ sync; int net_dev; TYPE_2__ stats; TYPE_1__ txr; } ;


 int QCASPI_EVENT_CPUON ;
 int QCASPI_EVENT_UPDATE ;
 int QCASPI_QCA7K_REBOOT_TIME_MS ;
 scalar_t__ QCASPI_SYNC_READY ;
 void* QCASPI_SYNC_UNKNOWN ;
 int SPI_INT_CPU_ON ;
 int SPI_INT_PKT_AVLBL ;
 int SPI_INT_RDBUF_ERR ;
 int SPI_INT_WRBUF_ERR ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int end_spi_intr_handling (struct qcaspi*,int) ;
 int kthread_should_stop () ;
 int msleep (int ) ;
 int netdev_dbg (int ,char*,...) ;
 int netdev_info (int ,char*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int netif_stop_queue (int ) ;
 int netif_wake_queue (int ) ;
 int qcaspi_flush_tx_ring (struct qcaspi*) ;
 int qcaspi_qca7k_sync (struct qcaspi*,int ) ;
 int qcaspi_receive (struct qcaspi*) ;
 int qcaspi_transmit (struct qcaspi*) ;
 int schedule () ;
 int set_current_state (int ) ;
 int start_spi_intr_handling (struct qcaspi*,int*) ;

__attribute__((used)) static int
qcaspi_spi_thread(void *data)
{
 struct qcaspi *qca = data;
 u16 intr_cause = 0;

 netdev_info(qca->net_dev, "SPI thread created\n");
 while (!kthread_should_stop()) {
  set_current_state(TASK_INTERRUPTIBLE);
  if ((qca->intr_req == qca->intr_svc) &&
      (qca->txr.skb[qca->txr.head] == ((void*)0)) &&
      (qca->sync == QCASPI_SYNC_READY))
   schedule();

  set_current_state(TASK_RUNNING);

  netdev_dbg(qca->net_dev, "have work to do. int: %d, tx_skb: %p\n",
      qca->intr_req - qca->intr_svc,
      qca->txr.skb[qca->txr.head]);

  qcaspi_qca7k_sync(qca, QCASPI_EVENT_UPDATE);

  if (qca->sync != QCASPI_SYNC_READY) {
   netdev_dbg(qca->net_dev, "sync: not ready %u, turn off carrier and flush\n",
       (unsigned int)qca->sync);
   netif_stop_queue(qca->net_dev);
   netif_carrier_off(qca->net_dev);
   qcaspi_flush_tx_ring(qca);
   msleep(QCASPI_QCA7K_REBOOT_TIME_MS);
  }

  if (qca->intr_svc != qca->intr_req) {
   qca->intr_svc = qca->intr_req;
   start_spi_intr_handling(qca, &intr_cause);

   if (intr_cause & SPI_INT_CPU_ON) {
    qcaspi_qca7k_sync(qca, QCASPI_EVENT_CPUON);


    if (qca->sync != QCASPI_SYNC_READY)
     continue;

    qca->stats.device_reset++;
    netif_wake_queue(qca->net_dev);
    netif_carrier_on(qca->net_dev);
   }

   if (intr_cause & SPI_INT_RDBUF_ERR) {

    netdev_dbg(qca->net_dev, "===> rdbuf error!\n");
    qca->stats.read_buf_err++;
    qca->sync = QCASPI_SYNC_UNKNOWN;
    continue;
   }

   if (intr_cause & SPI_INT_WRBUF_ERR) {

    netdev_dbg(qca->net_dev, "===> wrbuf error!\n");
    qca->stats.write_buf_err++;
    qca->sync = QCASPI_SYNC_UNKNOWN;
    continue;
   }




   if (qca->sync == QCASPI_SYNC_READY) {
    if (intr_cause & SPI_INT_PKT_AVLBL)
     qcaspi_receive(qca);
   }

   end_spi_intr_handling(qca, intr_cause);
  }

  if (qca->sync == QCASPI_SYNC_READY)
   qcaspi_transmit(qca);
 }
 set_current_state(TASK_RUNNING);
 netdev_info(qca->net_dev, "SPI thread exit\n");

 return 0;
}
