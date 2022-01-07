
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_local {int state; int state_complete; } ;


 int ETIMEDOUT ;
 int at86rf230_async_error (struct at86rf230_local*,int *,int) ;
 int at86rf230_async_state_change (struct at86rf230_local*,int *,unsigned int,int ) ;
 int at86rf230_sync_state_change_complete ;
 int msecs_to_jiffies (int) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int
at86rf230_sync_state_change(struct at86rf230_local *lp, unsigned int state)
{
 unsigned long rc;

 at86rf230_async_state_change(lp, &lp->state, state,
         at86rf230_sync_state_change_complete);

 rc = wait_for_completion_timeout(&lp->state_complete,
      msecs_to_jiffies(100));
 if (!rc) {
  at86rf230_async_error(lp, &lp->state, -ETIMEDOUT);
  return -ETIMEDOUT;
 }

 return 0;
}
