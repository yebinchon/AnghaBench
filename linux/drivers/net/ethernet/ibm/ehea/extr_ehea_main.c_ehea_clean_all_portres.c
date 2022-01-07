
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_port {int num_def_qps; int qp_eq; int * port_res; } ;


 int ehea_clean_portres (struct ehea_port*,int *) ;
 int ehea_destroy_eq (int ) ;

__attribute__((used)) static int ehea_clean_all_portres(struct ehea_port *port)
{
 int ret = 0;
 int i;

 for (i = 0; i < port->num_def_qps; i++)
  ret |= ehea_clean_portres(port, &port->port_res[i]);

 ret |= ehea_destroy_eq(port->qp_eq);

 return ret;
}
