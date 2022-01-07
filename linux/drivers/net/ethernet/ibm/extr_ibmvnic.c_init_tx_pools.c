
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ibmvnic_tx_pool {int dummy; } ;
struct ibmvnic_adapter {int num_active_tx_pools; int * tso_pool; scalar_t__ req_mtu; int req_tx_entries_per_subcrq; int * tx_pool; TYPE_1__* login_rsp_buf; } ;
struct TYPE_2__ {int num_txsubm_subcrqs; } ;


 int GFP_KERNEL ;
 int IBMVNIC_TSO_BUFS ;
 scalar_t__ IBMVNIC_TSO_BUF_SZ ;
 scalar_t__ VLAN_HLEN ;
 int be32_to_cpu (int ) ;
 int init_one_tx_pool (struct net_device*,int *,int ,scalar_t__) ;
 void* kcalloc (int,int,int ) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int release_tx_pools (struct ibmvnic_adapter*) ;

__attribute__((used)) static int init_tx_pools(struct net_device *netdev)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 int tx_subcrqs;
 int i, rc;

 tx_subcrqs = be32_to_cpu(adapter->login_rsp_buf->num_txsubm_subcrqs);
 adapter->tx_pool = kcalloc(tx_subcrqs,
       sizeof(struct ibmvnic_tx_pool), GFP_KERNEL);
 if (!adapter->tx_pool)
  return -1;

 adapter->tso_pool = kcalloc(tx_subcrqs,
        sizeof(struct ibmvnic_tx_pool), GFP_KERNEL);
 if (!adapter->tso_pool)
  return -1;

 adapter->num_active_tx_pools = tx_subcrqs;

 for (i = 0; i < tx_subcrqs; i++) {
  rc = init_one_tx_pool(netdev, &adapter->tx_pool[i],
          adapter->req_tx_entries_per_subcrq,
          adapter->req_mtu + VLAN_HLEN);
  if (rc) {
   release_tx_pools(adapter);
   return rc;
  }

  rc = init_one_tx_pool(netdev, &adapter->tso_pool[i],
          IBMVNIC_TSO_BUFS,
          IBMVNIC_TSO_BUF_SZ);
  if (rc) {
   release_tx_pools(adapter);
   return rc;
  }
 }

 return 0;
}
