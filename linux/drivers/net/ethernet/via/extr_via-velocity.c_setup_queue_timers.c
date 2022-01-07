
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int rxqueue_timer; int txqueue_timer; } ;
struct velocity_info {scalar_t__ rev_id; int mii_status; TYPE_1__* mac_regs; TYPE_2__ options; } ;
struct TYPE_3__ {int RQETMR; int TQETMR; } ;


 scalar_t__ REV_ID_VT3216_A0 ;
 int VELOCITY_SPEED_100 ;
 int VELOCITY_SPEED_1000 ;
 int writeb (int ,int *) ;

__attribute__((used)) static void setup_queue_timers(struct velocity_info *vptr)
{

 if (vptr->rev_id >= REV_ID_VT3216_A0) {
  u8 txqueue_timer = 0;
  u8 rxqueue_timer = 0;

  if (vptr->mii_status & (VELOCITY_SPEED_1000 |
    VELOCITY_SPEED_100)) {
   txqueue_timer = vptr->options.txqueue_timer;
   rxqueue_timer = vptr->options.rxqueue_timer;
  }

  writeb(txqueue_timer, &vptr->mac_regs->TQETMR);
  writeb(rxqueue_timer, &vptr->mac_regs->RQETMR);
 }
}
