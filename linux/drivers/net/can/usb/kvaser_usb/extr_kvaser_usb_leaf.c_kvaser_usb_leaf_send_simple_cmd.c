
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct kvaser_usb {int dummy; } ;
struct kvaser_cmd_simple {int dummy; } ;
struct TYPE_3__ {int channel; int tid; } ;
struct TYPE_4__ {TYPE_1__ simple; } ;
struct kvaser_cmd {scalar_t__ len; TYPE_2__ u; int id; } ;


 scalar_t__ CMD_HEADER_LEN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct kvaser_cmd*) ;
 struct kvaser_cmd* kmalloc (int,int ) ;
 int kvaser_usb_send_cmd (struct kvaser_usb const*,struct kvaser_cmd*,scalar_t__) ;

__attribute__((used)) static int kvaser_usb_leaf_send_simple_cmd(const struct kvaser_usb *dev,
        u8 cmd_id, int channel)
{
 struct kvaser_cmd *cmd;
 int rc;

 cmd = kmalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->id = cmd_id;
 cmd->len = CMD_HEADER_LEN + sizeof(struct kvaser_cmd_simple);
 cmd->u.simple.channel = channel;
 cmd->u.simple.tid = 0xff;

 rc = kvaser_usb_send_cmd(dev, cmd, cmd->len);

 kfree(cmd);
 return rc;
}
