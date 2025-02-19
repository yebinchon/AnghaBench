
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ehea_port_res {int num_def_qps; TYPE_4__* qp_eq; TYPE_2__* eq; struct ehea_port_res* port_res; } ;
struct ehea_port {int num_def_qps; TYPE_4__* qp_eq; TYPE_2__* eq; struct ehea_port* port_res; } ;
struct TYPE_7__ {int ist1; } ;
struct TYPE_8__ {TYPE_3__ attr; } ;
struct TYPE_5__ {int ist1; } ;
struct TYPE_6__ {TYPE_1__ attr; } ;


 int ibmebus_free_irq (int ,struct ehea_port_res*) ;
 int intr ;
 struct ehea_port_res* netdev_priv (struct net_device*) ;
 int netif_info (struct ehea_port_res*,int ,struct net_device*,char*,int,...) ;

__attribute__((used)) static void ehea_free_interrupts(struct net_device *dev)
{
 struct ehea_port *port = netdev_priv(dev);
 struct ehea_port_res *pr;
 int i;



 for (i = 0; i < port->num_def_qps; i++) {
  pr = &port->port_res[i];
  ibmebus_free_irq(pr->eq->attr.ist1, pr);
  netif_info(port, intr, dev,
      "free send irq for res %d with handle 0x%X\n",
      i, pr->eq->attr.ist1);
 }


 ibmebus_free_irq(port->qp_eq->attr.ist1, port);
 netif_info(port, intr, dev,
     "associated event interrupt for handle 0x%X freed\n",
     port->qp_eq->attr.ist1);
}
