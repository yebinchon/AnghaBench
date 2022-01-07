
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct hcp_ehea_port_cb4 {int port_speed; } ;
struct ehea_port {int autoneg; int full_duplex; scalar_t__ phy_link; int netdev; void* port_speed; int logical_port_id; TYPE_1__* adapter; } ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ EHEA_PHY_LINK_UP ;
 void* EHEA_SPEED_100M ;
 void* EHEA_SPEED_10G ;
 void* EHEA_SPEED_10M ;
 void* EHEA_SPEED_1G ;
 scalar_t__ EHEA_SPEED_AUTONEG ;
 int EIO ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 scalar_t__ H_AUTHORITY ;
 int H_PORT_CB4 ;
 int H_PORT_CB4_SPEED ;






 scalar_t__ H_SUCCESS ;
 scalar_t__ ehea_h_modify_ehea_port (int ,int ,int ,int ,struct hcp_ehea_port_cb4*) ;
 scalar_t__ ehea_h_query_ehea_port (int ,int ,int ,int ,struct hcp_ehea_port_cb4*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int prop_carrier_state ;

int ehea_set_portspeed(struct ehea_port *port, u32 port_speed)
{
 struct hcp_ehea_port_cb4 *cb4;
 u64 hret;
 int ret = 0;

 cb4 = (void *)get_zeroed_page(GFP_KERNEL);
 if (!cb4) {
  pr_err("no mem for cb4\n");
  ret = -ENOMEM;
  goto out;
 }

 cb4->port_speed = port_speed;

 netif_carrier_off(port->netdev);

 hret = ehea_h_modify_ehea_port(port->adapter->handle,
           port->logical_port_id,
           H_PORT_CB4, H_PORT_CB4_SPEED, cb4);
 if (hret == H_SUCCESS) {
  port->autoneg = port_speed == EHEA_SPEED_AUTONEG ? 1 : 0;

  hret = ehea_h_query_ehea_port(port->adapter->handle,
           port->logical_port_id,
           H_PORT_CB4, H_PORT_CB4_SPEED,
           cb4);
  if (hret == H_SUCCESS) {
   switch (cb4->port_speed) {
   case 129:
    port->port_speed = EHEA_SPEED_10M;
    port->full_duplex = 0;
    break;
   case 130:
    port->port_speed = EHEA_SPEED_10M;
    port->full_duplex = 1;
    break;
   case 132:
    port->port_speed = EHEA_SPEED_100M;
    port->full_duplex = 0;
    break;
   case 133:
    port->port_speed = EHEA_SPEED_100M;
    port->full_duplex = 1;
    break;
   case 128:
    port->port_speed = EHEA_SPEED_1G;
    port->full_duplex = 1;
    break;
   case 131:
    port->port_speed = EHEA_SPEED_10G;
    port->full_duplex = 1;
    break;
   default:
    port->port_speed = 0;
    port->full_duplex = 0;
    break;
   }
  } else {
   pr_err("Failed sensing port speed\n");
   ret = -EIO;
  }
 } else {
  if (hret == H_AUTHORITY) {
   pr_info("Hypervisor denied setting port speed\n");
   ret = -EPERM;
  } else {
   ret = -EIO;
   pr_err("Failed setting port speed\n");
  }
 }
 if (!prop_carrier_state || (port->phy_link == EHEA_PHY_LINK_UP))
  netif_carrier_on(port->netdev);

 free_page((unsigned long)cb4);
out:
 return ret;
}
