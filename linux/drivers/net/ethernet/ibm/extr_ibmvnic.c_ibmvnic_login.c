
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ibmvnic_adapter {scalar_t__ init_done_rc; int mac_addr; int init_done; } ;


 int IBMVNIC_MAX_QUEUES ;
 scalar_t__ PARTIALSUCCESS ;
 int __ibmvnic_set_mac (struct net_device*,int ) ;
 int init_sub_crq_irqs (struct ibmvnic_adapter*) ;
 int init_sub_crqs (struct ibmvnic_adapter*) ;
 unsigned long msecs_to_jiffies (int) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int reinit_completion (int *) ;
 int release_sub_crqs (struct ibmvnic_adapter*,int) ;
 int send_cap_queries (struct ibmvnic_adapter*) ;
 int send_login (struct ibmvnic_adapter*) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int ibmvnic_login(struct net_device *netdev)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 unsigned long timeout = msecs_to_jiffies(30000);
 int retry_count = 0;
 bool retry;
 int rc;

 do {
  retry = 0;
  if (retry_count > IBMVNIC_MAX_QUEUES) {
   netdev_warn(netdev, "Login attempts exceeded\n");
   return -1;
  }

  adapter->init_done_rc = 0;
  reinit_completion(&adapter->init_done);
  rc = send_login(adapter);
  if (rc) {
   netdev_warn(netdev, "Unable to login\n");
   return rc;
  }

  if (!wait_for_completion_timeout(&adapter->init_done,
       timeout)) {
   netdev_warn(netdev, "Login timed out\n");
   return -1;
  }

  if (adapter->init_done_rc == PARTIALSUCCESS) {
   retry_count++;
   release_sub_crqs(adapter, 1);

   retry = 1;
   netdev_dbg(netdev,
       "Received partial success, retrying...\n");
   adapter->init_done_rc = 0;
   reinit_completion(&adapter->init_done);
   send_cap_queries(adapter);
   if (!wait_for_completion_timeout(&adapter->init_done,
        timeout)) {
    netdev_warn(netdev,
         "Capabilities query timed out\n");
    return -1;
   }

   rc = init_sub_crqs(adapter);
   if (rc) {
    netdev_warn(netdev,
         "SCRQ initialization failed\n");
    return -1;
   }

   rc = init_sub_crq_irqs(adapter);
   if (rc) {
    netdev_warn(netdev,
         "SCRQ irq initialization failed\n");
    return -1;
   }
  } else if (adapter->init_done_rc) {
   netdev_warn(netdev, "Adapter login failed\n");
   return -1;
  }
 } while (retry);

 __ibmvnic_set_mac(netdev, adapter->mac_addr);

 return 0;
}
