
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct kvaser_usb_net_priv {int stop_comp; int channel; int dev; TYPE_1__ can; } ;


 int CAN_STATE_STOPPED ;
 int CMD_STOP_CHIP_REQ ;
 int ETIMEDOUT ;
 int KVASER_USB_TIMEOUT ;
 int init_completion (int *) ;
 int kvaser_usb_hydra_send_simple_cmd (int ,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int kvaser_usb_hydra_stop_chip(struct kvaser_usb_net_priv *priv)
{
 int err;

 init_completion(&priv->stop_comp);




 priv->can.state = CAN_STATE_STOPPED;

 err = kvaser_usb_hydra_send_simple_cmd(priv->dev, CMD_STOP_CHIP_REQ,
            priv->channel);
 if (err)
  return err;

 if (!wait_for_completion_timeout(&priv->stop_comp,
      msecs_to_jiffies(KVASER_USB_TIMEOUT)))
  return -ETIMEDOUT;

 return 0;
}
