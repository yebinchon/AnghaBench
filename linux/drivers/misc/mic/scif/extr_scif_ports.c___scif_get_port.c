
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_port {int ref_cnt; } ;
struct TYPE_2__ {int port_lock; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int idr_alloc (int *,struct scif_port*,int,int,int ) ;
 struct scif_port* kzalloc (int,int ) ;
 TYPE_1__ scif_info ;
 int scif_ports ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __scif_get_port(int start, int end)
{
 int id;
 struct scif_port *port = kzalloc(sizeof(*port), GFP_ATOMIC);

 if (!port)
  return -ENOMEM;
 spin_lock(&scif_info.port_lock);
 id = idr_alloc(&scif_ports, port, start, end, GFP_ATOMIC);
 if (id >= 0)
  port->ref_cnt++;
 spin_unlock(&scif_info.port_lock);
 return id;
}
