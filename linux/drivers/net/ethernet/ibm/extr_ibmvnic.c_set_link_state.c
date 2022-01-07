
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link_state; int cmd; int first; } ;
union ibmvnic_crq {TYPE_1__ logical_link_state; } ;
typedef int u8 ;
struct net_device {int dummy; } ;
struct ibmvnic_adapter {int init_done_rc; int init_done; struct net_device* netdev; } ;
typedef int crq ;


 int IBMVNIC_CRQ_CMD ;
 int LOGICAL_LINK_STATE ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 int mdelay (int) ;
 int memset (union ibmvnic_crq*,int ,int) ;
 unsigned long msecs_to_jiffies (int) ;
 int netdev_dbg (struct net_device*,char*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int set_link_state(struct ibmvnic_adapter *adapter, u8 link_state)
{
 struct net_device *netdev = adapter->netdev;
 unsigned long timeout = msecs_to_jiffies(30000);
 union ibmvnic_crq crq;
 bool resend;
 int rc;

 netdev_dbg(netdev, "setting link state %d\n", link_state);

 memset(&crq, 0, sizeof(crq));
 crq.logical_link_state.first = IBMVNIC_CRQ_CMD;
 crq.logical_link_state.cmd = LOGICAL_LINK_STATE;
 crq.logical_link_state.link_state = link_state;

 do {
  resend = 0;

  reinit_completion(&adapter->init_done);
  rc = ibmvnic_send_crq(adapter, &crq);
  if (rc) {
   netdev_err(netdev, "Failed to set link state\n");
   return rc;
  }

  if (!wait_for_completion_timeout(&adapter->init_done,
       timeout)) {
   netdev_err(netdev, "timeout setting link state\n");
   return -1;
  }

  if (adapter->init_done_rc == 1) {

   mdelay(1000);
   resend = 1;
  } else if (adapter->init_done_rc) {
   netdev_warn(netdev, "Unable to set link state, rc=%d\n",
        adapter->init_done_rc);
   return adapter->init_done_rc;
  }
 } while (resend);

 return 0;
}
