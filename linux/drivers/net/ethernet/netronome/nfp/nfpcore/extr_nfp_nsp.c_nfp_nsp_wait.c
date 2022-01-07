
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int cpp; } ;


 int EAGAIN ;
 int ERESTARTSYS ;
 int ETIMEDOUT ;
 unsigned long HZ ;
 unsigned long NFP_NSP_TIMEOUT_BOOT ;
 int SPCODE_NOOP ;
 unsigned long jiffies ;
 scalar_t__ msleep_interruptible (int) ;
 int nfp_dbg (int ,char*,unsigned long) ;
 int nfp_err (int ,char*,int) ;
 int nfp_nsp_command (struct nfp_nsp*,int ) ;
 scalar_t__ time_after (unsigned long const,unsigned long const) ;

int nfp_nsp_wait(struct nfp_nsp *state)
{
 const unsigned long wait_until = jiffies + NFP_NSP_TIMEOUT_BOOT * HZ;
 int err;

 nfp_dbg(state->cpp, "Waiting for NSP to respond (%u sec max).\n",
  NFP_NSP_TIMEOUT_BOOT);

 for (;;) {
  const unsigned long start_time = jiffies;

  err = nfp_nsp_command(state, SPCODE_NOOP);
  if (err != -EAGAIN)
   break;

  if (msleep_interruptible(25)) {
   err = -ERESTARTSYS;
   break;
  }

  if (time_after(start_time, wait_until)) {
   err = -ETIMEDOUT;
   break;
  }
 }
 if (err)
  nfp_err(state->cpp, "NSP failed to respond %d\n", err);

 return err;
}
