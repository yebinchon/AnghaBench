
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int rxerr; int txerr; } ;
struct kvaser_usb_net_priv {TYPE_1__ bec; } ;
struct kvaser_usb {int dummy; } ;
struct TYPE_4__ {int rx_err_counter; int tx_err_counter; int bus_status; } ;
struct kvaser_cmd {TYPE_2__ chip_state_event; } ;
struct can_berr_counter {int rxerr; int txerr; } ;


 struct kvaser_usb_net_priv* kvaser_usb_hydra_net_priv_from_cmd (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_hydra_update_state (struct kvaser_usb_net_priv*,int ,struct can_berr_counter*) ;

__attribute__((used)) static void kvaser_usb_hydra_state_event(const struct kvaser_usb *dev,
      const struct kvaser_cmd *cmd)
{
 struct kvaser_usb_net_priv *priv;
 struct can_berr_counter bec;
 u8 bus_status;

 priv = kvaser_usb_hydra_net_priv_from_cmd(dev, cmd);
 if (!priv)
  return;

 bus_status = cmd->chip_state_event.bus_status;
 bec.txerr = cmd->chip_state_event.tx_err_counter;
 bec.rxerr = cmd->chip_state_event.rx_err_counter;

 kvaser_usb_hydra_update_state(priv, bus_status, &bec);
 priv->bec.txerr = bec.txerr;
 priv->bec.rxerr = bec.rxerr;
}
