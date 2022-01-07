
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnx2x_func_state_params {int cmd; int ramrod_flags; int * f_obj; int * member_0; } ;
struct TYPE_4__ {int pmf; } ;
struct bnx2x {int flags; int func_obj; TYPE_3__* pdev; TYPE_2__* msix_table; TYPE_1__ port; } ;
struct TYPE_6__ {int irq; } ;
struct TYPE_5__ {int vector; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_F_CMD_TX_START ;
 int BNX2X_F_CMD_TX_STOP ;
 scalar_t__ BNX2X_F_STATE_STARTED ;
 int DP (int ,char*) ;
 int EBUSY ;
 int NETIF_MSG_IFDOWN ;
 int RAMROD_DRV_CLR_ONLY ;
 int USING_MSIX_FLAG ;
 int __set_bit (int ,int *) ;
 scalar_t__ bnx2x_func_get_state (struct bnx2x*,int *) ;
 int bnx2x_func_state_change (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_iov_wq ;
 int bnx2x_wq ;
 int flush_workqueue (int ) ;
 int msleep (int) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int bnx2x_func_wait_started(struct bnx2x *bp)
{
 int tout = 50;
 int msix = (bp->flags & USING_MSIX_FLAG) ? 1 : 0;

 if (!bp->port.pmf)
  return 0;
 if (msix)
  synchronize_irq(bp->msix_table[0].vector);
 else
  synchronize_irq(bp->pdev->irq);

 flush_workqueue(bnx2x_wq);
 flush_workqueue(bnx2x_iov_wq);

 while (bnx2x_func_get_state(bp, &bp->func_obj) !=
    BNX2X_F_STATE_STARTED && tout--)
  msleep(20);

 if (bnx2x_func_get_state(bp, &bp->func_obj) !=
      BNX2X_F_STATE_STARTED) {
  struct bnx2x_func_state_params func_params = {((void*)0)};

  DP(NETIF_MSG_IFDOWN,
     "Hmmm... Unexpected function state! Forcing STARTED-->TX_STOPPED-->STARTED\n");

  func_params.f_obj = &bp->func_obj;
  __set_bit(RAMROD_DRV_CLR_ONLY,
     &func_params.ramrod_flags);


  func_params.cmd = BNX2X_F_CMD_TX_STOP;
  bnx2x_func_state_change(bp, &func_params);


  func_params.cmd = BNX2X_F_CMD_TX_START;
  return bnx2x_func_state_change(bp, &func_params);

 }

 return 0;
}
