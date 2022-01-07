
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx_entries; int rx_entries; int tx_queues; int rx_queues; int mtu; } ;
struct TYPE_3__ {int tx_entries; int rx_entries; int tx_queues; int rx_queues; int mtu; } ;
struct ibmvnic_adapter {int wait_for_reset; int reset_done; TYPE_2__ fallback; TYPE_1__ desired; scalar_t__ reset_done_rc; int req_tx_entries_per_subcrq; int req_rx_add_entries_per_subcrq; int req_tx_queues; int req_rx_queues; int req_mtu; } ;


 int EIO ;
 int VNIC_RESET_CHANGE_PARAM ;
 int ibmvnic_reset (struct ibmvnic_adapter*,int ) ;
 int init_completion (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int wait_for_reset(struct ibmvnic_adapter *adapter)
{
 int rc, ret;

 adapter->fallback.mtu = adapter->req_mtu;
 adapter->fallback.rx_queues = adapter->req_rx_queues;
 adapter->fallback.tx_queues = adapter->req_tx_queues;
 adapter->fallback.rx_entries = adapter->req_rx_add_entries_per_subcrq;
 adapter->fallback.tx_entries = adapter->req_tx_entries_per_subcrq;

 init_completion(&adapter->reset_done);
 adapter->wait_for_reset = 1;
 rc = ibmvnic_reset(adapter, VNIC_RESET_CHANGE_PARAM);
 if (rc)
  return rc;
 wait_for_completion(&adapter->reset_done);

 ret = 0;
 if (adapter->reset_done_rc) {
  ret = -EIO;
  adapter->desired.mtu = adapter->fallback.mtu;
  adapter->desired.rx_queues = adapter->fallback.rx_queues;
  adapter->desired.tx_queues = adapter->fallback.tx_queues;
  adapter->desired.rx_entries = adapter->fallback.rx_entries;
  adapter->desired.tx_entries = adapter->fallback.tx_entries;

  init_completion(&adapter->reset_done);
  adapter->wait_for_reset = 1;
  rc = ibmvnic_reset(adapter, VNIC_RESET_CHANGE_PARAM);
  if (rc)
   return ret;
  wait_for_completion(&adapter->reset_done);
 }
 adapter->wait_for_reset = 0;

 return ret;
}
