
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dev; scalar_t__ sriov_cfg; int sriov_cfg_wait; int state; } ;


 int BNXT_SRIOV_CFG_WAIT_TMO ;
 int BNXT_STATE_ABORT_ERR ;
 int BNXT_STATE_IN_FW_RESET ;
 int __bnxt_close_nic (struct bnxt*,int,int) ;
 int netdev_warn (int ,char*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int bnxt_close_nic(struct bnxt *bp, bool irq_re_init, bool link_re_init)
{
 int rc = 0;

 if (test_bit(BNXT_STATE_IN_FW_RESET, &bp->state)) {







  netdev_warn(bp->dev, "FW reset in progress during close, FW reset will be aborted\n");
  set_bit(BNXT_STATE_ABORT_ERR, &bp->state);
 }
 __bnxt_close_nic(bp, irq_re_init, link_re_init);
 return rc;
}
