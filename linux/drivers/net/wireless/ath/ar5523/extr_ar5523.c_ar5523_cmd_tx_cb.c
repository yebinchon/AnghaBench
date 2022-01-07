
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ status; struct ar5523_tx_cmd* context; } ;
struct ar5523_tx_cmd {int flags; int done; scalar_t__ res; struct ar5523* ar; } ;
struct ar5523 {int dummy; } ;


 int AR5523_CMD_FLAG_READ ;
 int ar5523_err (struct ar5523*,char*,scalar_t__) ;
 int complete (int *) ;

__attribute__((used)) static void ar5523_cmd_tx_cb(struct urb *urb)
{
 struct ar5523_tx_cmd *cmd = urb->context;
 struct ar5523 *ar = cmd->ar;

 if (urb->status) {
  ar5523_err(ar, "Failed to TX command. Status = %d\n",
      urb->status);
  cmd->res = urb->status;
  complete(&cmd->done);
  return;
 }

 if (!(cmd->flags & AR5523_CMD_FLAG_READ)) {
  cmd->res = 0;
  complete(&cmd->done);
 }
}
