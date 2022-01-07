
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_port_res {scalar_t__ sq_restart_flag; } ;
struct ehea_port {int num_def_qps; int restart_wq; struct ehea_port_res* port_res; } ;


 int wake_up (int *) ;

__attribute__((used)) static void reset_sq_restart_flag(struct ehea_port *port)
{
 int i;

 for (i = 0; i < port->num_def_qps; i++) {
  struct ehea_port_res *pr = &port->port_res[i];
  pr->sq_restart_flag = 0;
 }
 wake_up(&port->restart_wq);
}
