
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbtf_private {int driver_lock; int cmdpendingq; } ;
struct cmd_ctrl_node {TYPE_1__* cmdbuf; int list; scalar_t__ result; } ;
struct TYPE_2__ {int command; int size; } ;


 int LBTF_DEB_HOST ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_host (char*,...) ;
 int lbtf_deb_leave (int ) ;
 int le16_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lbtf_queue_cmd(struct lbtf_private *priv,
     struct cmd_ctrl_node *cmdnode)
{
 unsigned long flags;
 lbtf_deb_enter(LBTF_DEB_HOST);

 if (!cmdnode) {
  lbtf_deb_host("QUEUE_CMD: cmdnode is NULL\n");
  goto qcmd_done;
 }

 if (!cmdnode->cmdbuf->size) {
  lbtf_deb_host("DNLD_CMD: cmd size is zero\n");
  goto qcmd_done;
 }

 cmdnode->result = 0;
 spin_lock_irqsave(&priv->driver_lock, flags);
 list_add_tail(&cmdnode->list, &priv->cmdpendingq);
 spin_unlock_irqrestore(&priv->driver_lock, flags);

 lbtf_deb_host("QUEUE_CMD: inserted command 0x%04x into cmdpendingq\n",
       le16_to_cpu(cmdnode->cmdbuf->command));

qcmd_done:
 lbtf_deb_leave(LBTF_DEB_HOST);
}
