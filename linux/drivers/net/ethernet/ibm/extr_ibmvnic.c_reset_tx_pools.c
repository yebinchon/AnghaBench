
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_adapter {int * tx_pool; int * tso_pool; TYPE_1__* login_rsp_buf; } ;
struct TYPE_2__ {int num_txsubm_subcrqs; } ;


 int be32_to_cpu (int ) ;
 int reset_one_tx_pool (struct ibmvnic_adapter*,int *) ;

__attribute__((used)) static int reset_tx_pools(struct ibmvnic_adapter *adapter)
{
 int tx_scrqs;
 int i, rc;

 tx_scrqs = be32_to_cpu(adapter->login_rsp_buf->num_txsubm_subcrqs);
 for (i = 0; i < tx_scrqs; i++) {
  rc = reset_one_tx_pool(adapter, &adapter->tso_pool[i]);
  if (rc)
   return rc;
  rc = reset_one_tx_pool(adapter, &adapter->tx_pool[i]);
  if (rc)
   return rc;
 }

 return 0;
}
