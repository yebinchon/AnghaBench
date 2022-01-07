
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2 {int dev; } ;


 int bnx2_cnic_stop (struct bnx2*) ;
 int bnx2_disable_int_sync (struct bnx2*) ;
 int bnx2_napi_disable (struct bnx2*) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_running (int ) ;
 int netif_tx_disable (int ) ;

__attribute__((used)) static void
bnx2_netif_stop(struct bnx2 *bp, bool stop_cnic)
{
 if (stop_cnic)
  bnx2_cnic_stop(bp);
 if (netif_running(bp->dev)) {
  bnx2_napi_disable(bp);
  netif_tx_disable(bp->dev);
 }
 bnx2_disable_int_sync(bp);
 netif_carrier_off(bp->dev);
}
