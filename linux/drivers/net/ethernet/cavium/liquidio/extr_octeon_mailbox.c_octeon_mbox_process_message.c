
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resp_needed; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct octeon_mbox_cmd {int recv_status; TYPE_2__ msg; int fn_arg; int (* fn ) (int ,struct octeon_mbox_cmd*,int ) ;} ;
struct octeon_mbox {int state; int lock; int mbox_read_reg; int mbox_req; int oct_dev; int mbox_resp; } ;


 int OCTEON_MBOX_STATE_ERROR ;
 void* OCTEON_MBOX_STATE_IDLE ;
 int OCTEON_MBOX_STATE_REQUEST_RECEIVED ;
 int OCTEON_MBOX_STATE_RESPONSE_PENDING ;
 int OCTEON_MBOX_STATE_RESPONSE_RECEIVED ;
 int OCTEON_MBOX_STATE_RESPONSE_RECEIVING ;
 int OCTEON_PFVFSIG ;
 int WARN_ON (int) ;
 int memcpy (struct octeon_mbox_cmd*,int *,int) ;
 int octeon_mbox_process_cmd (struct octeon_mbox*,struct octeon_mbox_cmd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,struct octeon_mbox_cmd*,int ) ;
 int stub2 (int ,struct octeon_mbox_cmd*,int ) ;
 int writeq (int ,int ) ;

int octeon_mbox_process_message(struct octeon_mbox *mbox)
{
 struct octeon_mbox_cmd mbox_cmd;
 unsigned long flags;

 spin_lock_irqsave(&mbox->lock, flags);

 if (mbox->state & OCTEON_MBOX_STATE_ERROR) {
  if (mbox->state & (OCTEON_MBOX_STATE_RESPONSE_PENDING |
       OCTEON_MBOX_STATE_RESPONSE_RECEIVING)) {
   memcpy(&mbox_cmd, &mbox->mbox_resp,
          sizeof(struct octeon_mbox_cmd));
   mbox->state = OCTEON_MBOX_STATE_IDLE;
   writeq(OCTEON_PFVFSIG, mbox->mbox_read_reg);
   spin_unlock_irqrestore(&mbox->lock, flags);
   mbox_cmd.recv_status = 1;
   if (mbox_cmd.fn)
    mbox_cmd.fn(mbox->oct_dev, &mbox_cmd,
         mbox_cmd.fn_arg);
   return 0;
  }

  mbox->state = OCTEON_MBOX_STATE_IDLE;
  writeq(OCTEON_PFVFSIG, mbox->mbox_read_reg);
  spin_unlock_irqrestore(&mbox->lock, flags);
  return 0;
 }

 if (mbox->state & OCTEON_MBOX_STATE_RESPONSE_RECEIVED) {
  memcpy(&mbox_cmd, &mbox->mbox_resp,
         sizeof(struct octeon_mbox_cmd));
  mbox->state = OCTEON_MBOX_STATE_IDLE;
  writeq(OCTEON_PFVFSIG, mbox->mbox_read_reg);
  spin_unlock_irqrestore(&mbox->lock, flags);
  mbox_cmd.recv_status = 0;
  if (mbox_cmd.fn)
   mbox_cmd.fn(mbox->oct_dev, &mbox_cmd, mbox_cmd.fn_arg);
  return 0;
 }

 if (mbox->state & OCTEON_MBOX_STATE_REQUEST_RECEIVED) {
  memcpy(&mbox_cmd, &mbox->mbox_req,
         sizeof(struct octeon_mbox_cmd));
  if (!mbox_cmd.msg.s.resp_needed) {
   mbox->state &= ~OCTEON_MBOX_STATE_REQUEST_RECEIVED;
   if (!(mbox->state &
         OCTEON_MBOX_STATE_RESPONSE_PENDING))
    mbox->state = OCTEON_MBOX_STATE_IDLE;
   writeq(OCTEON_PFVFSIG, mbox->mbox_read_reg);
  }

  spin_unlock_irqrestore(&mbox->lock, flags);
  octeon_mbox_process_cmd(mbox, &mbox_cmd);
  return 0;
 }

 spin_unlock_irqrestore(&mbox->lock, flags);
 WARN_ON(1);

 return 0;
}
