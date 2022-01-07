
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rocker_port {int pport; int dev; struct rocker* rocker; } ;
struct rocker {int dummy; } ;


 int PORT_PHYS_LINK_STATUS ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int rocker_read64 (struct rocker const*,int ) ;

__attribute__((used)) static void rocker_carrier_init(const struct rocker_port *rocker_port)
{
 const struct rocker *rocker = rocker_port->rocker;
 u64 link_status = rocker_read64(rocker, PORT_PHYS_LINK_STATUS);
 bool link_up;

 link_up = link_status & (1 << rocker_port->pport);
 if (link_up)
  netif_carrier_on(rocker_port->dev);
 else
  netif_carrier_off(rocker_port->dev);
}
