
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* capability; int cmd; int first; } ;
union ibmvnic_crq {TYPE_1__ query_capability; } ;
struct ibmvnic_adapter {int running_cap_crqs; } ;
typedef int crq ;


 int IBMVNIC_CRQ_CMD ;
 int MAX_MTU ;
 int MAX_MULTICAST_FILTERS ;
 int MAX_RX_ADD_ENTRIES_PER_SUBCRQ ;
 int MAX_RX_ADD_QUEUES ;
 int MAX_RX_QUEUES ;
 int MAX_TX_ENTRIES_PER_SUBCRQ ;
 int MAX_TX_QUEUES ;
 int MAX_TX_SG_ENTRIES ;
 int MIN_MTU ;
 int MIN_RX_ADD_ENTRIES_PER_SUBCRQ ;
 int MIN_RX_ADD_QUEUES ;
 int MIN_RX_QUEUES ;
 int MIN_TX_ENTRIES_PER_SUBCRQ ;
 int MIN_TX_QUEUES ;
 int OPT_RXBA_ENTRIES_PER_SUBCRQ ;
 int OPT_RX_BUFADD_Q_PER_RX_COMP_Q ;
 int OPT_RX_COMP_QUEUES ;
 int OPT_TX_COMP_SUB_QUEUES ;
 int OPT_TX_ENTRIES_PER_SUBCRQ ;
 int PROMISC_SUPPORTED ;
 int QUERY_CAPABILITY ;
 int RX_SG_SUPPORTED ;
 int RX_VLAN_HEADER_INSERTION ;
 int TCP_IP_OFFLOAD ;
 int TX_RX_DESC_REQ ;
 int VLAN_HEADER_INSERTION ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 void* cpu_to_be16 (int ) ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 int memset (union ibmvnic_crq*,int ,int) ;

__attribute__((used)) static void send_cap_queries(struct ibmvnic_adapter *adapter)
{
 union ibmvnic_crq crq;

 atomic_set(&adapter->running_cap_crqs, 0);
 memset(&crq, 0, sizeof(crq));
 crq.query_capability.first = IBMVNIC_CRQ_CMD;
 crq.query_capability.cmd = QUERY_CAPABILITY;

 crq.query_capability.capability = cpu_to_be16(MIN_TX_QUEUES);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(MIN_RX_QUEUES);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(MIN_RX_ADD_QUEUES);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(MAX_TX_QUEUES);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(MAX_RX_QUEUES);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(MAX_RX_ADD_QUEUES);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability =
     cpu_to_be16(MIN_TX_ENTRIES_PER_SUBCRQ);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability =
     cpu_to_be16(MIN_RX_ADD_ENTRIES_PER_SUBCRQ);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability =
     cpu_to_be16(MAX_TX_ENTRIES_PER_SUBCRQ);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability =
     cpu_to_be16(MAX_RX_ADD_ENTRIES_PER_SUBCRQ);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(TCP_IP_OFFLOAD);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(PROMISC_SUPPORTED);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(MIN_MTU);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(MAX_MTU);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(MAX_MULTICAST_FILTERS);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(VLAN_HEADER_INSERTION);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(RX_VLAN_HEADER_INSERTION);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(MAX_TX_SG_ENTRIES);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(RX_SG_SUPPORTED);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(OPT_TX_COMP_SUB_QUEUES);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(OPT_RX_COMP_QUEUES);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability =
   cpu_to_be16(OPT_RX_BUFADD_Q_PER_RX_COMP_Q);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability =
   cpu_to_be16(OPT_TX_ENTRIES_PER_SUBCRQ);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability =
   cpu_to_be16(OPT_RXBA_ENTRIES_PER_SUBCRQ);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);

 crq.query_capability.capability = cpu_to_be16(TX_RX_DESC_REQ);
 atomic_inc(&adapter->running_cap_crqs);
 ibmvnic_send_crq(adapter, &crq);
}
