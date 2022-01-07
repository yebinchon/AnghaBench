
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phylink_link_state {int interface; } ;
struct mvpp2_port {int nqvecs; int dev; int phy_interface; int phylink_config; scalar_t__ phylink; TYPE_2__* priv; TYPE_1__* qvecs; } ;
struct TYPE_4__ {scalar_t__ hw_version; } ;
struct TYPE_3__ {int napi; } ;


 int MLO_AN_INBAND ;
 scalar_t__ MVPP22 ;
 int mvpp22_mode_reconfigure (struct mvpp2_port*) ;
 int mvpp2_interrupts_enable (struct mvpp2_port*) ;
 int mvpp2_mac_config (int *,int ,struct phylink_link_state*) ;
 int mvpp2_mac_link_up (int *,int ,int ,int *) ;
 int mvpp2_txp_max_tx_size_set (struct mvpp2_port*) ;
 int napi_enable (int *) ;
 int netif_tx_start_all_queues (int ) ;
 int phylink_start (scalar_t__) ;

__attribute__((used)) static void mvpp2_start_dev(struct mvpp2_port *port)
{
 int i;

 mvpp2_txp_max_tx_size_set(port);

 for (i = 0; i < port->nqvecs; i++)
  napi_enable(&port->qvecs[i].napi);


 mvpp2_interrupts_enable(port);

 if (port->priv->hw_version == MVPP22)
  mvpp22_mode_reconfigure(port);

 if (port->phylink) {
  phylink_start(port->phylink);
 } else {




  struct phylink_link_state state = {
   .interface = port->phy_interface,
  };
  mvpp2_mac_config(&port->phylink_config, MLO_AN_INBAND, &state);
  mvpp2_mac_link_up(&port->phylink_config, MLO_AN_INBAND,
      port->phy_interface, ((void*)0));
 }

 netif_tx_start_all_queues(port->dev);
}
