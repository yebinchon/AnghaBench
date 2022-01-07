
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {scalar_t__ status; int wait; } ;


 int HZ ;
 scalar_t__ IBMASM_CMD_COMPLETE ;
 scalar_t__ IBMASM_CMD_FAILED ;
 int wait_event_interruptible_timeout (int ,int,int) ;

void ibmasm_wait_for_response(struct command *cmd, int timeout)
{
 wait_event_interruptible_timeout(cmd->wait,
    cmd->status == IBMASM_CMD_COMPLETE ||
    cmd->status == IBMASM_CMD_FAILED,
    timeout * HZ);
}
