
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct kvaser_usb_net_priv {int channel; } ;
struct kvaser_cmd_simple {int dummy; } ;
struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ simple; } ;
struct kvaser_cmd {scalar_t__ len; TYPE_2__ u; int id; } ;


 scalar_t__ CMD_HEADER_LEN ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int kfree (struct kvaser_cmd*) ;
 struct kvaser_cmd* kmalloc (int,int ) ;
 int kvaser_usb_send_cmd_async (struct kvaser_usb_net_priv*,struct kvaser_cmd*,scalar_t__) ;

__attribute__((used)) static int kvaser_usb_leaf_simple_cmd_async(struct kvaser_usb_net_priv *priv,
         u8 cmd_id)
{
 struct kvaser_cmd *cmd;
 int err;

 cmd = kmalloc(sizeof(*cmd), GFP_ATOMIC);
 if (!cmd)
  return -ENOMEM;

 cmd->len = CMD_HEADER_LEN + sizeof(struct kvaser_cmd_simple);
 cmd->id = cmd_id;
 cmd->u.simple.channel = priv->channel;

 err = kvaser_usb_send_cmd_async(priv, cmd, cmd->len);
 if (err)
  kfree(cmd);

 return err;
}
