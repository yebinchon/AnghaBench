
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct kvaser_usb_net_priv {int stop_comp; } ;
struct kvaser_usb {size_t nchannels; struct kvaser_usb_net_priv** nets; TYPE_3__* intf; } ;
struct TYPE_4__ {size_t channel; } ;
struct TYPE_5__ {TYPE_1__ simple; } ;
struct kvaser_cmd {TYPE_2__ u; } ;
struct TYPE_6__ {int dev; } ;


 int complete (int *) ;
 int dev_err (int *,char*,size_t) ;

__attribute__((used)) static void kvaser_usb_leaf_stop_chip_reply(const struct kvaser_usb *dev,
         const struct kvaser_cmd *cmd)
{
 struct kvaser_usb_net_priv *priv;
 u8 channel = cmd->u.simple.channel;

 if (channel >= dev->nchannels) {
  dev_err(&dev->intf->dev,
   "Invalid channel number (%d)\n", channel);
  return;
 }

 priv = dev->nets[channel];

 complete(&priv->stop_comp);
}
