
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_tc; } ;
struct qede_dev {int ndev; TYPE_1__ dev_info; } ;


 int DP_NOTICE (struct qede_dev*,char*) ;
 int QEDE_RSS_COUNT (struct qede_dev*) ;
 int QEDE_TSS_COUNT (struct qede_dev*) ;
 int netif_set_real_num_rx_queues (int ,int ) ;
 int netif_set_real_num_tx_queues (int ,int) ;

__attribute__((used)) static int qede_set_real_num_queues(struct qede_dev *edev)
{
 int rc = 0;

 rc = netif_set_real_num_tx_queues(edev->ndev,
       QEDE_TSS_COUNT(edev) *
       edev->dev_info.num_tc);
 if (rc) {
  DP_NOTICE(edev, "Failed to set real number of Tx queues\n");
  return rc;
 }

 rc = netif_set_real_num_rx_queues(edev->ndev, QEDE_RSS_COUNT(edev));
 if (rc) {
  DP_NOTICE(edev, "Failed to set real number of Rx queues\n");
  return rc;
 }

 return 0;
}
