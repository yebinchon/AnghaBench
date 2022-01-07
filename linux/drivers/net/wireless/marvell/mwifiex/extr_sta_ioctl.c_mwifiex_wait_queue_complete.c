
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int wait; } ;
struct mwifiex_adapter {TYPE_1__ cmd_wait_q; } ;
struct cmd_ctrl_node {int * condition; } ;


 int ERROR ;
 int ETIMEDOUT ;
 int HZ ;
 int mwifiex_cancel_all_pending_cmd (struct mwifiex_adapter*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int) ;
 int wait_event_interruptible_timeout (int ,int ,int) ;

int mwifiex_wait_queue_complete(struct mwifiex_adapter *adapter,
    struct cmd_ctrl_node *cmd_queued)
{
 int status;


 status = wait_event_interruptible_timeout(adapter->cmd_wait_q.wait,
        *(cmd_queued->condition),
        (12 * HZ));
 if (status <= 0) {
  if (status == 0)
   status = -ETIMEDOUT;
  mwifiex_dbg(adapter, ERROR, "cmd_wait_q terminated: %d\n",
       status);
  mwifiex_cancel_all_pending_cmd(adapter);
  return status;
 }

 status = adapter->cmd_wait_q.status;
 adapter->cmd_wait_q.status = 0;

 return status;
}
