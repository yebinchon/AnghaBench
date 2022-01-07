
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int max_cos; int dev; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;
 int DP (int ,char*,int,int) ;
 int NETIF_MSG_IFUP ;
 int NO_FCOE (struct bnx2x*) ;
 int netif_set_real_num_rx_queues (int ,int) ;
 int netif_set_real_num_tx_queues (int ,int) ;

__attribute__((used)) static int bnx2x_set_real_num_queues(struct bnx2x *bp, int include_cnic)
{
 int rc, tx, rx;

 tx = BNX2X_NUM_ETH_QUEUES(bp) * bp->max_cos;
 rx = BNX2X_NUM_ETH_QUEUES(bp);


 if (include_cnic && !NO_FCOE(bp)) {
  rx++;
  tx++;
 }

 rc = netif_set_real_num_tx_queues(bp->dev, tx);
 if (rc) {
  BNX2X_ERR("Failed to set real number of Tx queues: %d\n", rc);
  return rc;
 }
 rc = netif_set_real_num_rx_queues(bp->dev, rx);
 if (rc) {
  BNX2X_ERR("Failed to set real number of Rx queues: %d\n", rc);
  return rc;
 }

 DP(NETIF_MSG_IFUP, "Setting real num queues to (tx, rx) (%d, %d)\n",
     tx, rx);

 return rc;
}
