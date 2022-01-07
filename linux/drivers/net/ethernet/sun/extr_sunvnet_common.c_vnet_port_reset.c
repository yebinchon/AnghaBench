
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet_port {int tso; scalar_t__ vsw; scalar_t__ tsolen; scalar_t__ rmtu; int clean_timer; } ;


 int del_timer (int *) ;
 int sunvnet_port_free_tx_bufs_common (struct vnet_port*) ;

void vnet_port_reset(struct vnet_port *port)
{
 del_timer(&port->clean_timer);
 sunvnet_port_free_tx_bufs_common(port);
 port->rmtu = 0;
 port->tso = (port->vsw == 0);
 port->tsolen = 0;
}
