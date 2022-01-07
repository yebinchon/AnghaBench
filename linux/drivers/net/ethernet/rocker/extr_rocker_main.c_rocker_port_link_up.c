
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dev; } ;


 int netdev_info (int ,char*) ;
 int netif_carrier_on (int ) ;

__attribute__((used)) static void rocker_port_link_up(const struct rocker_port *rocker_port)
{
 netif_carrier_on(rocker_port->dev);
 netdev_info(rocker_port->dev, "Link is up\n");
}
