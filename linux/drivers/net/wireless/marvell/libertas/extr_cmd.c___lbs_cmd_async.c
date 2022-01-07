
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct lbs_private {int waitq; scalar_t__ is_deep_sleep; int is_auto_deep_sleep_enabled; scalar_t__ surpriseremoved; } ;
struct cmd_header {int dummy; } ;
struct cmd_ctrl_node {int (* callback ) (struct lbs_private*,unsigned long,struct cmd_header*) ;unsigned long callback_arg; scalar_t__ cmdwaitqwoken; TYPE_1__* cmdbuf; } ;
struct TYPE_2__ {scalar_t__ result; void* size; void* command; } ;


 int EBUSY ;
 int ENOBUFS ;
 int ENOENT ;
 struct cmd_ctrl_node* ERR_PTR (int ) ;
 void* cpu_to_le16 (int) ;
 int lbs_deb_cmd (char*) ;
 int lbs_deb_host (char*,...) ;
 struct cmd_ctrl_node* lbs_get_free_cmd_node (struct lbs_private*) ;
 int lbs_queue_cmd (struct lbs_private*,struct cmd_ctrl_node*) ;
 int memcpy (TYPE_1__*,struct cmd_header*,int) ;
 int wake_up (int *) ;

struct cmd_ctrl_node *__lbs_cmd_async(struct lbs_private *priv,
 uint16_t command, struct cmd_header *in_cmd, int in_cmd_size,
 int (*callback)(struct lbs_private *, unsigned long, struct cmd_header *),
 unsigned long callback_arg)
{
 struct cmd_ctrl_node *cmdnode;

 if (priv->surpriseremoved) {
  lbs_deb_host("PREP_CMD: card removed\n");
  cmdnode = ERR_PTR(-ENOENT);
  goto done;
 }




 if (!priv->is_auto_deep_sleep_enabled) {
  if (priv->is_deep_sleep) {
   lbs_deb_cmd("command not allowed in deep sleep\n");
   cmdnode = ERR_PTR(-EBUSY);
   goto done;
  }
 }

 cmdnode = lbs_get_free_cmd_node(priv);
 if (cmdnode == ((void*)0)) {
  lbs_deb_host("PREP_CMD: cmdnode is NULL\n");


  wake_up(&priv->waitq);
  cmdnode = ERR_PTR(-ENOBUFS);
  goto done;
 }

 cmdnode->callback = callback;
 cmdnode->callback_arg = callback_arg;


 memcpy(cmdnode->cmdbuf, in_cmd, in_cmd_size);


 cmdnode->cmdbuf->command = cpu_to_le16(command);
 cmdnode->cmdbuf->size = cpu_to_le16(in_cmd_size);
 cmdnode->cmdbuf->result = 0;

 lbs_deb_host("PREP_CMD: command 0x%04x\n", command);

 cmdnode->cmdwaitqwoken = 0;
 lbs_queue_cmd(priv, cmdnode);
 wake_up(&priv->waitq);

 done:
 return cmdnode;
}
