
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {scalar_t__ psstate; int driver_lock; int cmdpendingq; } ;
struct cmd_ds_802_11_ps_mode {scalar_t__ action; } ;
struct cmd_ctrl_node {TYPE_1__* cmdbuf; int list; scalar_t__ result; } ;
struct TYPE_2__ {int command; int size; } ;


 scalar_t__ CMD_802_11_PS_MODE ;
 scalar_t__ CMD_802_11_WAKEUP_CONFIRM ;
 int PS_MODE_ACTION_EXIT_PS ;
 scalar_t__ PS_STATE_FULL_POWER ;
 scalar_t__ cpu_to_le16 (int ) ;
 int lbs_deb_host (char*,...) ;
 scalar_t__ le16_to_cpu (int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lbs_queue_cmd(struct lbs_private *priv,
     struct cmd_ctrl_node *cmdnode)
{
 unsigned long flags;
 int addtail = 1;

 if (!cmdnode) {
  lbs_deb_host("QUEUE_CMD: cmdnode is NULL\n");
  return;
 }
 if (!cmdnode->cmdbuf->size) {
  lbs_deb_host("DNLD_CMD: cmd size is zero\n");
  return;
 }
 cmdnode->result = 0;


 if (le16_to_cpu(cmdnode->cmdbuf->command) == CMD_802_11_PS_MODE) {
  struct cmd_ds_802_11_ps_mode *psm = (void *)cmdnode->cmdbuf;

  if (psm->action == cpu_to_le16(PS_MODE_ACTION_EXIT_PS)) {
   if (priv->psstate != PS_STATE_FULL_POWER)
    addtail = 0;
  }
 }

 if (le16_to_cpu(cmdnode->cmdbuf->command) == CMD_802_11_WAKEUP_CONFIRM)
  addtail = 0;

 spin_lock_irqsave(&priv->driver_lock, flags);

 if (addtail)
  list_add_tail(&cmdnode->list, &priv->cmdpendingq);
 else
  list_add(&cmdnode->list, &priv->cmdpendingq);

 spin_unlock_irqrestore(&priv->driver_lock, flags);

 lbs_deb_host("QUEUE_CMD: inserted command 0x%04x into cmdpendingq\n",
       le16_to_cpu(cmdnode->cmdbuf->command));
}
