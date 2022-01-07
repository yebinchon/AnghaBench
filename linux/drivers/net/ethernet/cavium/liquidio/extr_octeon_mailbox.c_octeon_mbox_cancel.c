
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_mbox_cmd {int dummy; } ;
struct octeon_mbox {int state; int lock; int mbox_read_reg; struct octeon_mbox_cmd mbox_resp; } ;
struct octeon_device {struct octeon_mbox** mbox; } ;


 int OCTEON_MBOX_STATE_IDLE ;
 int OCTEON_MBOX_STATE_RESPONSE_PENDING ;
 int OCTEON_PFVFSIG ;
 int memset (struct octeon_mbox_cmd*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeq (int ,int ) ;

int octeon_mbox_cancel(struct octeon_device *oct, int q_no)
{
 struct octeon_mbox *mbox = oct->mbox[q_no];
 struct octeon_mbox_cmd *mbox_cmd;
 unsigned long flags = 0;

 spin_lock_irqsave(&mbox->lock, flags);
 mbox_cmd = &mbox->mbox_resp;

 if (!(mbox->state & OCTEON_MBOX_STATE_RESPONSE_PENDING)) {
  spin_unlock_irqrestore(&mbox->lock, flags);
  return 1;
 }

 mbox->state = OCTEON_MBOX_STATE_IDLE;
 memset(mbox_cmd, 0, sizeof(*mbox_cmd));
 writeq(OCTEON_PFVFSIG, mbox->mbox_read_reg);
 spin_unlock_irqrestore(&mbox->lock, flags);

 return 0;
}
