
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct kvaser_usb_net_priv {size_t channel; struct kvaser_usb* dev; } ;
struct TYPE_5__ {int * channel_to_he; } ;
struct TYPE_6__ {TYPE_2__ hydra; } ;
struct kvaser_usb {TYPE_3__ card_data; } ;
struct TYPE_4__ {int cmd_no; } ;
struct kvaser_cmd {TYPE_1__ header; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct kvaser_cmd* kcalloc (int,int,int ) ;
 int kfree (struct kvaser_cmd*) ;
 int kvaser_usb_hydra_cmd_size (struct kvaser_cmd*) ;
 int kvaser_usb_hydra_get_next_transid (struct kvaser_usb*) ;
 int kvaser_usb_hydra_set_cmd_dest_he (struct kvaser_cmd*,int ) ;
 int kvaser_usb_hydra_set_cmd_transid (struct kvaser_cmd*,int ) ;
 int kvaser_usb_send_cmd_async (struct kvaser_usb_net_priv*,struct kvaser_cmd*,int ) ;

__attribute__((used)) static int
kvaser_usb_hydra_send_simple_cmd_async(struct kvaser_usb_net_priv *priv,
           u8 cmd_no)
{
 struct kvaser_cmd *cmd;
 struct kvaser_usb *dev = priv->dev;
 int err;

 cmd = kcalloc(1, sizeof(struct kvaser_cmd), GFP_ATOMIC);
 if (!cmd)
  return -ENOMEM;

 cmd->header.cmd_no = cmd_no;

 kvaser_usb_hydra_set_cmd_dest_he
  (cmd, dev->card_data.hydra.channel_to_he[priv->channel]);
 kvaser_usb_hydra_set_cmd_transid
    (cmd, kvaser_usb_hydra_get_next_transid(dev));

 err = kvaser_usb_send_cmd_async(priv, cmd,
     kvaser_usb_hydra_cmd_size(cmd));
 if (err)
  kfree(cmd);

 return err;
}
