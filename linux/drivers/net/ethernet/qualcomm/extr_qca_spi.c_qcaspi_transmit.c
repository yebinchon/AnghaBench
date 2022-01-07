
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_10__ {size_t head; scalar_t__ count; int size; TYPE_3__** skb; } ;
struct TYPE_9__ {int write_err; int write_buf_miss; int buf_avail_err; } ;
struct qcaspi {TYPE_4__* net_dev; TYPE_2__ txr; TYPE_1__ stats; } ;
struct net_device_stats {int tx_bytes; int tx_packets; } ;
struct TYPE_12__ {struct net_device_stats stats; } ;
struct TYPE_11__ {scalar_t__ len; } ;


 scalar_t__ QCASPI_HW_BUF_LEN ;
 scalar_t__ QCASPI_HW_PKT_LEN ;
 int SPI_REG_WRBUF_SPC_AVA ;
 int dev_kfree_skb (TYPE_3__*) ;
 scalar_t__ netif_queue_stopped (TYPE_4__*) ;
 int netif_tx_lock_bh (TYPE_4__*) ;
 int netif_tx_unlock_bh (TYPE_4__*) ;
 int netif_wake_queue (TYPE_4__*) ;
 int qcaspi_read_register (struct qcaspi*,int ,scalar_t__*) ;
 int qcaspi_tx_frame (struct qcaspi*,TYPE_3__*) ;

__attribute__((used)) static int
qcaspi_transmit(struct qcaspi *qca)
{
 struct net_device_stats *n_stats = &qca->net_dev->stats;
 u16 available = 0;
 u32 pkt_len;
 u16 new_head;
 u16 packets = 0;

 if (qca->txr.skb[qca->txr.head] == ((void*)0))
  return 0;

 qcaspi_read_register(qca, SPI_REG_WRBUF_SPC_AVA, &available);

 if (available > QCASPI_HW_BUF_LEN) {



  qca->stats.buf_avail_err++;
  return -1;
 }

 while (qca->txr.skb[qca->txr.head]) {
  pkt_len = qca->txr.skb[qca->txr.head]->len + QCASPI_HW_PKT_LEN;

  if (available < pkt_len) {
   if (packets == 0)
    qca->stats.write_buf_miss++;
   break;
  }

  if (qcaspi_tx_frame(qca, qca->txr.skb[qca->txr.head]) == -1) {
   qca->stats.write_err++;
   return -1;
  }

  packets++;
  n_stats->tx_packets++;
  n_stats->tx_bytes += qca->txr.skb[qca->txr.head]->len;
  available -= pkt_len;





  netif_tx_lock_bh(qca->net_dev);
  dev_kfree_skb(qca->txr.skb[qca->txr.head]);
  qca->txr.skb[qca->txr.head] = ((void*)0);
  qca->txr.size -= pkt_len;
  new_head = qca->txr.head + 1;
  if (new_head >= qca->txr.count)
   new_head = 0;
  qca->txr.head = new_head;
  if (netif_queue_stopped(qca->net_dev))
   netif_wake_queue(qca->net_dev);
  netif_tx_unlock_bh(qca->net_dev);
 }

 return 0;
}
