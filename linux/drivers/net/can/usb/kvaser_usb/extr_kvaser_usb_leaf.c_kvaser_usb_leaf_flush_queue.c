
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvaser_usb_net_priv {int dev; int channel; } ;
struct kvaser_cmd_flush_queue {int dummy; } ;
struct TYPE_3__ {int flags; int channel; } ;
struct TYPE_4__ {TYPE_1__ flush_queue; } ;
struct kvaser_cmd {scalar_t__ len; TYPE_2__ u; int id; } ;


 int CMD_FLUSH_QUEUE ;
 scalar_t__ CMD_HEADER_LEN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct kvaser_cmd*) ;
 struct kvaser_cmd* kmalloc (int,int ) ;
 int kvaser_usb_send_cmd (int ,struct kvaser_cmd*,scalar_t__) ;

__attribute__((used)) static int kvaser_usb_leaf_flush_queue(struct kvaser_usb_net_priv *priv)
{
 struct kvaser_cmd *cmd;
 int rc;

 cmd = kmalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->id = CMD_FLUSH_QUEUE;
 cmd->len = CMD_HEADER_LEN + sizeof(struct kvaser_cmd_flush_queue);
 cmd->u.flush_queue.channel = priv->channel;
 cmd->u.flush_queue.flags = 0x00;

 rc = kvaser_usb_send_cmd(priv->dev, cmd, cmd->len);

 kfree(cmd);
 return rc;
}
