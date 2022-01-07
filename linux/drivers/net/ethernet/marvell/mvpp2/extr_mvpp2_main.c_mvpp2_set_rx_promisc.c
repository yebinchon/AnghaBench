
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_port {int id; int priv; TYPE_1__* dev; } ;
struct TYPE_2__ {int features; } ;


 int MVPP2_PRS_L2_MULTI_CAST ;
 int MVPP2_PRS_L2_UNI_CAST ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int mvpp2_prs_mac_promisc_set (int ,int ,int ,int) ;
 int mvpp2_prs_vid_disable_filtering (struct mvpp2_port*) ;
 int mvpp2_prs_vid_enable_filtering (struct mvpp2_port*) ;

__attribute__((used)) static void mvpp2_set_rx_promisc(struct mvpp2_port *port, bool enable)
{
 if (!enable && (port->dev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
  mvpp2_prs_vid_enable_filtering(port);
 else
  mvpp2_prs_vid_disable_filtering(port);

 mvpp2_prs_mac_promisc_set(port->priv, port->id,
      MVPP2_PRS_L2_UNI_CAST, enable);

 mvpp2_prs_mac_promisc_set(port->priv, port->id,
      MVPP2_PRS_L2_MULTI_CAST, enable);
}
