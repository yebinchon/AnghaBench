
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct lbtf_private {int seqnum; int cmd_work; scalar_t__ surpriseremoved; } ;
struct cmd_header {int dummy; } ;
struct cmd_ctrl_node {int (* callback ) (struct lbtf_private*,unsigned long,struct cmd_header*) ;unsigned long callback_arg; scalar_t__ cmdwaitqwoken; TYPE_1__* cmdbuf; } ;
struct TYPE_2__ {scalar_t__ result; void* seqnum; void* size; void* command; } ;


 int ENOBUFS ;
 int ENOENT ;
 struct cmd_ctrl_node* ERR_PTR (int ) ;
 int LBTF_DEB_HOST ;
 void* cpu_to_le16 (int) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_host (char*,...) ;
 int lbtf_deb_leave_args (int ,char*,struct cmd_ctrl_node*) ;
 struct cmd_ctrl_node* lbtf_get_cmd_ctrl_node (struct lbtf_private*) ;
 int lbtf_queue_cmd (struct lbtf_private*,struct cmd_ctrl_node*) ;
 int lbtf_wq ;
 int memcpy (TYPE_1__*,struct cmd_header*,int) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static struct cmd_ctrl_node *__lbtf_cmd_async(struct lbtf_private *priv,
 uint16_t command, struct cmd_header *in_cmd, int in_cmd_size,
 int (*callback)(struct lbtf_private *, unsigned long,
   struct cmd_header *),
 unsigned long callback_arg)
{
 struct cmd_ctrl_node *cmdnode;

 lbtf_deb_enter(LBTF_DEB_HOST);

 if (priv->surpriseremoved) {
  lbtf_deb_host("PREP_CMD: card removed\n");
  cmdnode = ERR_PTR(-ENOENT);
  goto done;
 }

 cmdnode = lbtf_get_cmd_ctrl_node(priv);
 if (cmdnode == ((void*)0)) {
  lbtf_deb_host("PREP_CMD: cmdnode is NULL\n");


  queue_work(lbtf_wq, &priv->cmd_work);
  cmdnode = ERR_PTR(-ENOBUFS);
  goto done;
 }

 cmdnode->callback = callback;
 cmdnode->callback_arg = callback_arg;


 memcpy(cmdnode->cmdbuf, in_cmd, in_cmd_size);


 priv->seqnum++;
 cmdnode->cmdbuf->command = cpu_to_le16(command);
 cmdnode->cmdbuf->size = cpu_to_le16(in_cmd_size);
 cmdnode->cmdbuf->seqnum = cpu_to_le16(priv->seqnum);
 cmdnode->cmdbuf->result = 0;

 lbtf_deb_host("PREP_CMD: command 0x%04x\n", command);

 cmdnode->cmdwaitqwoken = 0;
 lbtf_queue_cmd(priv, cmdnode);
 queue_work(lbtf_wq, &priv->cmd_work);

 done:
 lbtf_deb_leave_args(LBTF_DEB_HOST, "ret %p", cmdnode);
 return cmdnode;
}
