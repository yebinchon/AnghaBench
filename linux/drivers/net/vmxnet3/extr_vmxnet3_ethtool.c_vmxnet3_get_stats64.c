
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vmxnet3_tq_driver_stats {scalar_t__ drop_total; } ;
struct vmxnet3_rq_driver_stats {scalar_t__ drop_total; } ;
struct vmxnet3_adapter {int num_tx_queues; int num_rx_queues; TYPE_4__* rx_queue; TYPE_3__* rqd_start; TYPE_2__* tx_queue; TYPE_1__* tqd_start; int cmd_lock; } ;
struct rtnl_link_stats64 {int multicast; int rx_dropped; int rx_errors; int rx_bytes; int rx_packets; int tx_dropped; int tx_errors; int tx_bytes; int tx_packets; } ;
struct net_device {int dummy; } ;
struct UPT1_TxStats {scalar_t__ pktsTxError; scalar_t__ bcastBytesTxOK; scalar_t__ mcastBytesTxOK; scalar_t__ ucastBytesTxOK; scalar_t__ bcastPktsTxOK; scalar_t__ mcastPktsTxOK; scalar_t__ ucastPktsTxOK; } ;
struct UPT1_RxStats {scalar_t__ mcastPktsRxOK; scalar_t__ pktsRxError; scalar_t__ bcastBytesRxOK; scalar_t__ mcastBytesRxOK; scalar_t__ ucastBytesRxOK; scalar_t__ bcastPktsRxOK; scalar_t__ ucastPktsRxOK; } ;
struct TYPE_8__ {struct vmxnet3_rq_driver_stats stats; } ;
struct TYPE_7__ {struct UPT1_RxStats stats; } ;
struct TYPE_6__ {struct vmxnet3_tq_driver_stats stats; } ;
struct TYPE_5__ {struct UPT1_TxStats stats; } ;


 int VMXNET3_CMD_GET_STATS ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
vmxnet3_get_stats64(struct net_device *netdev,
     struct rtnl_link_stats64 *stats)
{
 struct vmxnet3_adapter *adapter;
 struct vmxnet3_tq_driver_stats *drvTxStats;
 struct vmxnet3_rq_driver_stats *drvRxStats;
 struct UPT1_TxStats *devTxStats;
 struct UPT1_RxStats *devRxStats;
 unsigned long flags;
 int i;

 adapter = netdev_priv(netdev);


 spin_lock_irqsave(&adapter->cmd_lock, flags);
 VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD, VMXNET3_CMD_GET_STATS);
 spin_unlock_irqrestore(&adapter->cmd_lock, flags);

 for (i = 0; i < adapter->num_tx_queues; i++) {
  devTxStats = &adapter->tqd_start[i].stats;
  drvTxStats = &adapter->tx_queue[i].stats;
  stats->tx_packets += devTxStats->ucastPktsTxOK +
         devTxStats->mcastPktsTxOK +
         devTxStats->bcastPktsTxOK;
  stats->tx_bytes += devTxStats->ucastBytesTxOK +
       devTxStats->mcastBytesTxOK +
       devTxStats->bcastBytesTxOK;
  stats->tx_errors += devTxStats->pktsTxError;
  stats->tx_dropped += drvTxStats->drop_total;
 }

 for (i = 0; i < adapter->num_rx_queues; i++) {
  devRxStats = &adapter->rqd_start[i].stats;
  drvRxStats = &adapter->rx_queue[i].stats;
  stats->rx_packets += devRxStats->ucastPktsRxOK +
         devRxStats->mcastPktsRxOK +
         devRxStats->bcastPktsRxOK;

  stats->rx_bytes += devRxStats->ucastBytesRxOK +
       devRxStats->mcastBytesRxOK +
       devRxStats->bcastBytesRxOK;

  stats->rx_errors += devRxStats->pktsRxError;
  stats->rx_dropped += drvRxStats->drop_total;
  stats->multicast += devRxStats->mcastPktsRxOK;
 }
}
