
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {long code; } ;
struct TYPE_6__ {scalar_t__ number; int capability; TYPE_2__ rc; } ;
union ibmvnic_crq {TYPE_3__ query_capability; } ;
struct net_device {int features; void* max_mtu; void* min_mtu; } ;
struct ibmvnic_adapter {scalar_t__ min_tx_queues; scalar_t__ min_rx_queues; scalar_t__ min_rx_add_queues; scalar_t__ max_tx_queues; scalar_t__ max_rx_queues; scalar_t__ max_rx_add_queues; scalar_t__ min_tx_entries_per_subcrq; scalar_t__ min_rx_add_entries_per_subcrq; scalar_t__ max_tx_entries_per_subcrq; scalar_t__ max_rx_add_entries_per_subcrq; scalar_t__ tcp_ip_offload; scalar_t__ promisc_supported; void* min_mtu; void* max_mtu; scalar_t__ max_multicast_filters; scalar_t__ vlan_header_insertion; scalar_t__ rx_vlan_header_insertion; scalar_t__ max_tx_sg_entries; scalar_t__ rx_sg_supported; scalar_t__ opt_tx_comp_sub_queues; scalar_t__ opt_rx_comp_queues; scalar_t__ opt_rx_bufadd_q_per_rx_comp_q; scalar_t__ opt_tx_entries_per_subcrq; scalar_t__ opt_rxba_entries_per_subcrq; scalar_t__ tx_rx_desc_req; int wait_capability; int running_cap_crqs; TYPE_1__* vdev; struct net_device* netdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 void* ETH_HLEN ;
 int NETIF_F_HW_VLAN_STAG_TX ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int be16_to_cpu (int ) ;
 void* be64_to_cpu (scalar_t__) ;
 int dev_err (struct device*,char*,long) ;
 int ibmvnic_send_req_caps (struct ibmvnic_adapter*,int ) ;
 int netdev_dbg (struct net_device*,char*,scalar_t__) ;
 int netdev_err (struct net_device*,char*,int ) ;

__attribute__((used)) static void handle_query_cap_rsp(union ibmvnic_crq *crq,
     struct ibmvnic_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct device *dev = &adapter->vdev->dev;
 long rc;

 atomic_dec(&adapter->running_cap_crqs);
 netdev_dbg(netdev, "Outstanding queries: %d\n",
     atomic_read(&adapter->running_cap_crqs));
 rc = crq->query_capability.rc.code;
 if (rc) {
  dev_err(dev, "Error %ld in QUERY_CAP_RSP\n", rc);
  goto out;
 }

 switch (be16_to_cpu(crq->query_capability.capability)) {
 case 139:
  adapter->min_tx_queues =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "min_tx_queues = %lld\n",
      adapter->min_tx_queues);
  break;
 case 141:
  adapter->min_rx_queues =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "min_rx_queues = %lld\n",
      adapter->min_rx_queues);
  break;
 case 142:
  adapter->min_rx_add_queues =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "min_rx_add_queues = %lld\n",
      adapter->min_rx_add_queues);
  break;
 case 146:
  adapter->max_tx_queues =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "max_tx_queues = %lld\n",
      adapter->max_tx_queues);
  break;
 case 148:
  adapter->max_rx_queues =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "max_rx_queues = %lld\n",
      adapter->max_rx_queues);
  break;
 case 149:
  adapter->max_rx_add_queues =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "max_rx_add_queues = %lld\n",
      adapter->max_rx_add_queues);
  break;
 case 140:
  adapter->min_tx_entries_per_subcrq =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "min_tx_entries_per_subcrq = %lld\n",
      adapter->min_tx_entries_per_subcrq);
  break;
 case 143:
  adapter->min_rx_add_entries_per_subcrq =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "min_rx_add_entrs_per_subcrq = %lld\n",
      adapter->min_rx_add_entries_per_subcrq);
  break;
 case 147:
  adapter->max_tx_entries_per_subcrq =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "max_tx_entries_per_subcrq = %lld\n",
      adapter->max_tx_entries_per_subcrq);
  break;
 case 150:
  adapter->max_rx_add_entries_per_subcrq =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "max_rx_add_entrs_per_subcrq = %lld\n",
      adapter->max_rx_add_entries_per_subcrq);
  break;
 case 130:
  adapter->tcp_ip_offload =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "tcp_ip_offload = %lld\n",
      adapter->tcp_ip_offload);
  break;
 case 133:
  adapter->promisc_supported =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "promisc_supported = %lld\n",
      adapter->promisc_supported);
  break;
 case 144:
  adapter->min_mtu = be64_to_cpu(crq->query_capability.number);
  netdev->min_mtu = adapter->min_mtu - ETH_HLEN;
  netdev_dbg(netdev, "min_mtu = %lld\n", adapter->min_mtu);
  break;
 case 152:
  adapter->max_mtu = be64_to_cpu(crq->query_capability.number);
  netdev->max_mtu = adapter->max_mtu - ETH_HLEN;
  netdev_dbg(netdev, "max_mtu = %lld\n", adapter->max_mtu);
  break;
 case 151:
  adapter->max_multicast_filters =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "max_multicast_filters = %lld\n",
      adapter->max_multicast_filters);
  break;
 case 128:
  adapter->vlan_header_insertion =
      be64_to_cpu(crq->query_capability.number);
  if (adapter->vlan_header_insertion)
   netdev->features |= NETIF_F_HW_VLAN_STAG_TX;
  netdev_dbg(netdev, "vlan_header_insertion = %lld\n",
      adapter->vlan_header_insertion);
  break;
 case 131:
  adapter->rx_vlan_header_insertion =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "rx_vlan_header_insertion = %lld\n",
      adapter->rx_vlan_header_insertion);
  break;
 case 145:
  adapter->max_tx_sg_entries =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "max_tx_sg_entries = %lld\n",
      adapter->max_tx_sg_entries);
  break;
 case 132:
  adapter->rx_sg_supported =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "rx_sg_supported = %lld\n",
      adapter->rx_sg_supported);
  break;
 case 135:
  adapter->opt_tx_comp_sub_queues =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "opt_tx_comp_sub_queues = %lld\n",
      adapter->opt_tx_comp_sub_queues);
  break;
 case 136:
  adapter->opt_rx_comp_queues =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "opt_rx_comp_queues = %lld\n",
      adapter->opt_rx_comp_queues);
  break;
 case 137:
  adapter->opt_rx_bufadd_q_per_rx_comp_q =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "opt_rx_bufadd_q_per_rx_comp_q = %lld\n",
      adapter->opt_rx_bufadd_q_per_rx_comp_q);
  break;
 case 134:
  adapter->opt_tx_entries_per_subcrq =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "opt_tx_entries_per_subcrq = %lld\n",
      adapter->opt_tx_entries_per_subcrq);
  break;
 case 138:
  adapter->opt_rxba_entries_per_subcrq =
      be64_to_cpu(crq->query_capability.number);
  netdev_dbg(netdev, "opt_rxba_entries_per_subcrq = %lld\n",
      adapter->opt_rxba_entries_per_subcrq);
  break;
 case 129:
  adapter->tx_rx_desc_req = crq->query_capability.number;
  netdev_dbg(netdev, "tx_rx_desc_req = %llx\n",
      adapter->tx_rx_desc_req);
  break;

 default:
  netdev_err(netdev, "Got invalid cap rsp %d\n",
      crq->query_capability.capability);
 }

out:
 if (atomic_read(&adapter->running_cap_crqs) == 0) {
  adapter->wait_capability = 0;
  ibmvnic_send_req_caps(adapter, 0);
 }
}
