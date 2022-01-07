
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_port {int port_list; } ;


 int kfree (struct nfp_port*) ;
 int list_del (int *) ;

void nfp_port_free(struct nfp_port *port)
{
 if (!port)
  return;
 list_del(&port->port_list);
 kfree(port);
}
