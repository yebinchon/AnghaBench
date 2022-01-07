
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {char* name; } ;
struct ehea_port_res {int num_def_qps; TYPE_4__* qp_eq; struct ehea_port_res* port_res; TYPE_2__* eq; int int_send_name; int int_aff_name; } ;
struct ehea_port {int num_def_qps; TYPE_4__* qp_eq; struct ehea_port* port_res; TYPE_2__* eq; int int_send_name; int int_aff_name; } ;
struct TYPE_7__ {int ist1; } ;
struct TYPE_8__ {TYPE_3__ attr; } ;
struct TYPE_5__ {int ist1; } ;
struct TYPE_6__ {TYPE_1__ attr; } ;


 scalar_t__ EHEA_IRQ_NAME_SIZE ;
 int ehea_qp_aff_irq_handler ;
 int ehea_recv_irq_handler ;
 int ibmebus_free_irq (int ,struct ehea_port_res*) ;
 int ibmebus_request_irq (int ,int ,int ,int ,struct ehea_port_res*) ;
 int ifup ;
 int netdev_err (struct net_device*,char*,int,...) ;
 struct ehea_port_res* netdev_priv (struct net_device*) ;
 int netif_info (struct ehea_port_res*,int ,struct net_device*,char*,int ,...) ;
 int snprintf (int ,scalar_t__,char*,char*,...) ;

__attribute__((used)) static int ehea_reg_interrupts(struct net_device *dev)
{
 struct ehea_port *port = netdev_priv(dev);
 struct ehea_port_res *pr;
 int i, ret;


 snprintf(port->int_aff_name, EHEA_IRQ_NAME_SIZE - 1, "%s-aff",
   dev->name);

 ret = ibmebus_request_irq(port->qp_eq->attr.ist1,
      ehea_qp_aff_irq_handler,
      0, port->int_aff_name, port);
 if (ret) {
  netdev_err(dev, "failed registering irq for qp_aff_irq_handler:ist=%X\n",
      port->qp_eq->attr.ist1);
  goto out_free_qpeq;
 }

 netif_info(port, ifup, dev,
     "irq_handle 0x%X for function qp_aff_irq_handler registered\n",
     port->qp_eq->attr.ist1);


 for (i = 0; i < port->num_def_qps; i++) {
  pr = &port->port_res[i];
  snprintf(pr->int_send_name, EHEA_IRQ_NAME_SIZE - 1,
    "%s-queue%d", dev->name, i);
  ret = ibmebus_request_irq(pr->eq->attr.ist1,
       ehea_recv_irq_handler,
       0, pr->int_send_name, pr);
  if (ret) {
   netdev_err(dev, "failed registering irq for ehea_queue port_res_nr:%d, ist=%X\n",
       i, pr->eq->attr.ist1);
   goto out_free_req;
  }
  netif_info(port, ifup, dev,
      "irq_handle 0x%X for function ehea_queue_int %d registered\n",
      pr->eq->attr.ist1, i);
 }
out:
 return ret;


out_free_req:
 while (--i >= 0) {
  u32 ist = port->port_res[i].eq->attr.ist1;
  ibmebus_free_irq(ist, &port->port_res[i]);
 }

out_free_qpeq:
 ibmebus_free_irq(port->qp_eq->attr.ist1, port);
 i = port->num_def_qps;

 goto out;

}
