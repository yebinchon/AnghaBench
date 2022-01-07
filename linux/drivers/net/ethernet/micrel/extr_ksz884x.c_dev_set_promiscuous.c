
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int priv_flags; } ;
struct ksz_switch {int member; } ;
struct ksz_hw {int promiscuous; int features; struct ksz_switch* ksz_switch; } ;
struct TYPE_2__ {int first_port; } ;
struct dev_priv {int promiscuous; TYPE_1__ port; } ;


 int IFF_BRIDGE_PORT ;
 int STP_STATE_DISABLED ;
 int STP_SUPPORT ;
 int bridge_change (struct ksz_hw*) ;
 int hw_set_promiscuous (struct ksz_hw*,int) ;
 int port_set_stp_state (struct ksz_hw*,int,int ) ;

__attribute__((used)) static void dev_set_promiscuous(struct net_device *dev, struct dev_priv *priv,
 struct ksz_hw *hw, int promiscuous)
{
 if (promiscuous != priv->promiscuous) {
  u8 prev_state = hw->promiscuous;

  if (promiscuous)
   ++hw->promiscuous;
  else
   --hw->promiscuous;
  priv->promiscuous = promiscuous;


  if (hw->promiscuous <= 1 && prev_state <= 1)
   hw_set_promiscuous(hw, hw->promiscuous);





  if ((hw->features & STP_SUPPORT) && !promiscuous &&
      (dev->priv_flags & IFF_BRIDGE_PORT)) {
   struct ksz_switch *sw = hw->ksz_switch;
   int port = priv->port.first_port;

   port_set_stp_state(hw, port, STP_STATE_DISABLED);
   port = 1 << port;
   if (sw->member & port) {
    sw->member &= ~port;
    bridge_change(hw);
   }
  }
 }
}
