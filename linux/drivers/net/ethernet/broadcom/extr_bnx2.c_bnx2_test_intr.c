
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2 {int hc_cmd; int dev; } ;


 int BNX2_HC_COMMAND ;
 int BNX2_HC_COMMAND_COAL_NOW ;
 int BNX2_PCICFG_INT_ACK_CMD ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int ENODEV ;
 int msleep_interruptible (int) ;
 int netif_running (int ) ;

__attribute__((used)) static int
bnx2_test_intr(struct bnx2 *bp)
{
 int i;
 u16 status_idx;

 if (!netif_running(bp->dev))
  return -ENODEV;

 status_idx = BNX2_RD(bp, BNX2_PCICFG_INT_ACK_CMD) & 0xffff;


 BNX2_WR(bp, BNX2_HC_COMMAND, bp->hc_cmd | BNX2_HC_COMMAND_COAL_NOW);
 BNX2_RD(bp, BNX2_HC_COMMAND);

 for (i = 0; i < 10; i++) {
  if ((BNX2_RD(bp, BNX2_PCICFG_INT_ACK_CMD) & 0xffff) !=
   status_idx) {

   break;
  }

  msleep_interruptible(10);
 }
 if (i < 10)
  return 0;

 return -ENODEV;
}
