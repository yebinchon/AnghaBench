
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct ehea_qp {int fw_handle; } ;
struct ehea_port {int qp_eq; int adapter; TYPE_1__* port_res; } ;
struct ehea_eqe {int entry; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct ehea_qp* qp; } ;


 scalar_t__ EHEA_AERR_RESET_MASK ;
 scalar_t__ EHEA_AER_RESET_MASK ;
 scalar_t__ EHEA_AER_RESTYPE_QP ;
 size_t EHEA_BMASK_GET (int ,int ) ;
 int EHEA_EQE_QP_TOKEN ;
 int IRQ_HANDLED ;
 scalar_t__ ehea_error_data (int ,int ,scalar_t__*,scalar_t__*) ;
 struct ehea_eqe* ehea_poll_eq (int ) ;
 int ehea_schedule_port_reset (struct ehea_port*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static irqreturn_t ehea_qp_aff_irq_handler(int irq, void *param)
{
 struct ehea_port *port = param;
 struct ehea_eqe *eqe;
 struct ehea_qp *qp;
 u32 qp_token;
 u64 resource_type, aer, aerr;
 int reset_port = 0;

 eqe = ehea_poll_eq(port->qp_eq);

 while (eqe) {
  qp_token = EHEA_BMASK_GET(EHEA_EQE_QP_TOKEN, eqe->entry);
  pr_err("QP aff_err: entry=0x%llx, token=0x%x\n",
         eqe->entry, qp_token);

  qp = port->port_res[qp_token].qp;

  resource_type = ehea_error_data(port->adapter, qp->fw_handle,
      &aer, &aerr);

  if (resource_type == EHEA_AER_RESTYPE_QP) {
   if ((aer & EHEA_AER_RESET_MASK) ||
       (aerr & EHEA_AERR_RESET_MASK))
     reset_port = 1;
  } else
   reset_port = 1;

  eqe = ehea_poll_eq(port->qp_eq);
 }

 if (reset_port) {
  pr_err("Resetting port\n");
  ehea_schedule_port_reset(port);
 }

 return IRQ_HANDLED;
}
