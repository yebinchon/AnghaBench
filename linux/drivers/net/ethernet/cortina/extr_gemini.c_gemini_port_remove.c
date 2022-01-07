
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemini_ethernet_port {int geth; int pclk; scalar_t__ netdev; } ;


 int clk_disable_unprepare (int ) ;
 int geth_cleanup_freeq (int ) ;
 int unregister_netdev (scalar_t__) ;

__attribute__((used)) static void gemini_port_remove(struct gemini_ethernet_port *port)
{
 if (port->netdev)
  unregister_netdev(port->netdev);
 clk_disable_unprepare(port->pclk);
 geth_cleanup_freeq(port->geth);
}
