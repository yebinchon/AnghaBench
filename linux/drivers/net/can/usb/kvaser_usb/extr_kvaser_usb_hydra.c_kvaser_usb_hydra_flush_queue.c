
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvaser_usb_net_priv {int flush_comp; int channel; int dev; } ;


 int CMD_FLUSH_QUEUE ;
 int ETIMEDOUT ;
 int KVASER_USB_TIMEOUT ;
 int init_completion (int *) ;
 int kvaser_usb_hydra_send_simple_cmd (int ,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int kvaser_usb_hydra_flush_queue(struct kvaser_usb_net_priv *priv)
{
 int err;

 init_completion(&priv->flush_comp);

 err = kvaser_usb_hydra_send_simple_cmd(priv->dev, CMD_FLUSH_QUEUE,
            priv->channel);
 if (err)
  return err;

 if (!wait_for_completion_timeout(&priv->flush_comp,
      msecs_to_jiffies(KVASER_USB_TIMEOUT)))
  return -ETIMEDOUT;

 return 0;
}
