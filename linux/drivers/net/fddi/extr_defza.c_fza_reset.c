
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct fza_private {scalar_t__ state_chg_flag; int name; TYPE_1__* regs; int state_chg_wait; int lock; } ;
struct TYPE_2__ {int status; } ;


 int EIO ;
 scalar_t__ FZA_STATE_UNINITIALIZED ;
 scalar_t__ FZA_STATUS_GET_STATE (scalar_t__) ;
 int FZA_STATUS_GET_TEST (scalar_t__) ;
 int HZ ;
 int fza_do_reset (struct fza_private*) ;
 int pr_debug (char*,int ,int) ;
 int pr_err (char*,int ,scalar_t__,...) ;
 int pr_info (char*,int ) ;
 scalar_t__ readw_u (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 long wait_event_timeout (int ,scalar_t__,int) ;

__attribute__((used)) static int fza_reset(struct fza_private *fp)
{
 unsigned long flags;
 uint status, state;
 long t;

 pr_info("%s: resetting the board...\n", fp->name);

 spin_lock_irqsave(&fp->lock, flags);
 fp->state_chg_flag = 0;
 fza_do_reset(fp);
 spin_unlock_irqrestore(&fp->lock, flags);





 t = wait_event_timeout(fp->state_chg_wait, fp->state_chg_flag,
          45 * HZ);
 status = readw_u(&fp->regs->status);
 state = FZA_STATUS_GET_STATE(status);
 if (fp->state_chg_flag == 0) {
  pr_err("%s: RESET timed out!, state %x\n", fp->name, state);
  return -EIO;
 }
 if (state != FZA_STATE_UNINITIALIZED) {
  pr_err("%s: RESET failed!, state %x, failure ID %x\n",
         fp->name, state, FZA_STATUS_GET_TEST(status));
  return -EIO;
 }
 pr_info("%s: OK\n", fp->name);
 pr_debug("%s: RESET: %lums elapsed\n", fp->name,
   (45 * HZ - t) * 1000 / HZ);

 return 0;
}
