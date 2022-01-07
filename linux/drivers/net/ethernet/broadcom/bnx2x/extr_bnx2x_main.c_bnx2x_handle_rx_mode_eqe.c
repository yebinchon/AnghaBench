
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dev; int sp_state; } ;


 int BNX2X_FILTER_ISCSI_ETH_START_SCHED ;
 int BNX2X_FILTER_ISCSI_ETH_STOP_SCHED ;
 int BNX2X_FILTER_RX_MODE_PENDING ;
 int BNX2X_FILTER_RX_MODE_SCHED ;
 int bnx2x_set_iscsi_eth_rx_mode (struct bnx2x*,int) ;
 int bnx2x_set_storm_rx_mode (struct bnx2x*) ;
 int clear_bit (int ,int *) ;
 int netif_addr_lock_bh (int ) ;
 int netif_addr_unlock_bh (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void bnx2x_handle_rx_mode_eqe(struct bnx2x *bp)
{
 netif_addr_lock_bh(bp->dev);

 clear_bit(BNX2X_FILTER_RX_MODE_PENDING, &bp->sp_state);


 if (test_and_clear_bit(BNX2X_FILTER_RX_MODE_SCHED, &bp->sp_state))
  bnx2x_set_storm_rx_mode(bp);
 else if (test_and_clear_bit(BNX2X_FILTER_ISCSI_ETH_START_SCHED,
        &bp->sp_state))
  bnx2x_set_iscsi_eth_rx_mode(bp, 1);
 else if (test_and_clear_bit(BNX2X_FILTER_ISCSI_ETH_STOP_SCHED,
        &bp->sp_state))
  bnx2x_set_iscsi_eth_rx_mode(bp, 0);

 netif_addr_unlock_bh(bp->dev);
}
