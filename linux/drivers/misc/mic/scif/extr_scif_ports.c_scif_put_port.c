
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct scif_port {int ref_cnt; } ;
struct TYPE_2__ {int port_lock; } ;


 struct scif_port* idr_find (int *,int ) ;
 int idr_remove (int *,int ) ;
 int kfree (struct scif_port*) ;
 TYPE_1__ scif_info ;
 int scif_ports ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void scif_put_port(u16 id)
{
 struct scif_port *port;

 if (!id)
  return;
 spin_lock(&scif_info.port_lock);
 port = idr_find(&scif_ports, id);
 if (port) {
  port->ref_cnt--;
  if (!port->ref_cnt) {
   idr_remove(&scif_ports, id);
   kfree(port);
  }
 }
 spin_unlock(&scif_info.port_lock);
}
