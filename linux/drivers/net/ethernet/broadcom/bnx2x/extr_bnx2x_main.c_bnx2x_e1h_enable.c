
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dev; } ;


 scalar_t__ BNX2X_IS_MF_SD_PROTOCOL_FCOE (struct bnx2x*) ;
 int BP_PORT (struct bnx2x*) ;
 scalar_t__ IS_MF_UFP (struct bnx2x*) ;
 scalar_t__ NIG_REG_LLH0_FUNC_EN ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int netif_tx_wake_all_queues (int ) ;

__attribute__((used)) static void bnx2x_e1h_enable(struct bnx2x *bp)
{
 int port = BP_PORT(bp);

 if (!(IS_MF_UFP(bp) && BNX2X_IS_MF_SD_PROTOCOL_FCOE(bp)))
  REG_WR(bp, NIG_REG_LLH0_FUNC_EN + port * 8, 1);


 netif_tx_wake_all_queues(bp->dev);





}
