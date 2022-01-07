
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvaser_usb_net_priv {int stop_comp; } ;
struct kvaser_usb {int dummy; } ;
struct kvaser_cmd {int dummy; } ;


 int complete (int *) ;
 struct kvaser_usb_net_priv* kvaser_usb_hydra_net_priv_from_cmd (struct kvaser_usb const*,struct kvaser_cmd const*) ;

__attribute__((used)) static void kvaser_usb_hydra_stop_chip_reply(const struct kvaser_usb *dev,
          const struct kvaser_cmd *cmd)
{
 struct kvaser_usb_net_priv *priv;

 priv = kvaser_usb_hydra_net_priv_from_cmd(dev, cmd);
 if (!priv)
  return;

 complete(&priv->stop_comp);
}
