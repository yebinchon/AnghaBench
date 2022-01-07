
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* len; void* ioba; int cmd; int first; } ;
union ibmvnic_crq {TYPE_1__ request_statistics; } ;
typedef int u64 ;
struct net_device {int dummy; } ;
struct ibmvnic_statistics {int dummy; } ;
struct ibmvnic_adapter {int stats_token; int req_tx_queues; int req_rx_queues; TYPE_3__* rx_stats_buffers; TYPE_2__* tx_stats_buffers; int stats_done; } ;
struct ethtool_stats {int dummy; } ;
typedef int crq ;
struct TYPE_9__ {int offset; } ;
struct TYPE_8__ {int interrupts; int bytes; int packets; } ;
struct TYPE_7__ {int dropped_packets; int bytes; int packets; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int IBMVNIC_CRQ_CMD ;
 int IBMVNIC_GET_STAT (struct ibmvnic_adapter*,int ) ;
 int REQUEST_STATISTICS ;
 int be64_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 TYPE_4__* ibmvnic_stats ;
 int init_completion (int *) ;
 int memset (union ibmvnic_crq*,int ,int) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ibmvnic_get_ethtool_stats(struct net_device *dev,
          struct ethtool_stats *stats, u64 *data)
{
 struct ibmvnic_adapter *adapter = netdev_priv(dev);
 union ibmvnic_crq crq;
 int i, j;
 int rc;

 memset(&crq, 0, sizeof(crq));
 crq.request_statistics.first = IBMVNIC_CRQ_CMD;
 crq.request_statistics.cmd = REQUEST_STATISTICS;
 crq.request_statistics.ioba = cpu_to_be32(adapter->stats_token);
 crq.request_statistics.len =
     cpu_to_be32(sizeof(struct ibmvnic_statistics));


 init_completion(&adapter->stats_done);
 rc = ibmvnic_send_crq(adapter, &crq);
 if (rc)
  return;
 wait_for_completion(&adapter->stats_done);

 for (i = 0; i < ARRAY_SIZE(ibmvnic_stats); i++)
  data[i] = be64_to_cpu(IBMVNIC_GET_STAT(adapter,
      ibmvnic_stats[i].offset));

 for (j = 0; j < adapter->req_tx_queues; j++) {
  data[i] = adapter->tx_stats_buffers[j].packets;
  i++;
  data[i] = adapter->tx_stats_buffers[j].bytes;
  i++;
  data[i] = adapter->tx_stats_buffers[j].dropped_packets;
  i++;
 }

 for (j = 0; j < adapter->req_rx_queues; j++) {
  data[i] = adapter->rx_stats_buffers[j].packets;
  i++;
  data[i] = adapter->rx_stats_buffers[j].bytes;
  i++;
  data[i] = adapter->rx_stats_buffers[j].interrupts;
  i++;
 }
}
