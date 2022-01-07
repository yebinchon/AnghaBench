
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int ndev; int flags; } ;
struct qed_link_output {scalar_t__ link_up; } ;


 int DP_NOTICE (struct qede_dev*,char*) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*) ;
 int NETIF_MSG_LINK ;
 int QEDE_FLAGS_LINK_REQUESTED ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int netif_tx_disable (int ) ;
 int netif_tx_start_all_queues (int ) ;
 int qede_rdma_dev_event_close (struct qede_dev*) ;
 int qede_rdma_dev_event_open (struct qede_dev*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void qede_link_update(void *dev, struct qed_link_output *link)
{
 struct qede_dev *edev = dev;

 if (!test_bit(QEDE_FLAGS_LINK_REQUESTED, &edev->flags)) {
  DP_VERBOSE(edev, NETIF_MSG_LINK, "Interface is not ready\n");
  return;
 }

 if (link->link_up) {
  if (!netif_carrier_ok(edev->ndev)) {
   DP_NOTICE(edev, "Link is up\n");
   netif_tx_start_all_queues(edev->ndev);
   netif_carrier_on(edev->ndev);
   qede_rdma_dev_event_open(edev);
  }
 } else {
  if (netif_carrier_ok(edev->ndev)) {
   DP_NOTICE(edev, "Link is down\n");
   netif_tx_disable(edev->ndev);
   netif_carrier_off(edev->ndev);
   qede_rdma_dev_event_close(edev);
  }
 }
}
