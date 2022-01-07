
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_swqe {int immediate_data_length; int tx_control; int wr_id; } ;
struct ehea_port_res {scalar_t__ sq_restart_flag; int port; int qp; int swqe_avail; } ;
struct ehea_port {int num_def_qps; int restart_wq; struct ehea_port_res* port_res; } ;


 int EHEA_SWQE_IMM_DATA_PRESENT ;
 int EHEA_SWQE_PURGE ;
 int EHEA_SWQE_SIGNALLED_COMPLETION ;
 int SWQE_HEADER_SIZE ;
 int SWQE_RESTART_CHECK ;
 int atomic_dec (int *) ;
 struct ehea_swqe* ehea_get_swqe (int ,int*) ;
 int ehea_post_swqe (int ,struct ehea_swqe*) ;
 int ehea_schedule_port_reset (int ) ;
 int memset (struct ehea_swqe*,int ,int ) ;
 int msecs_to_jiffies (int) ;
 int pr_err (char*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void check_sqs(struct ehea_port *port)
{
 struct ehea_swqe *swqe;
 int swqe_index;
 int i;

 for (i = 0; i < port->num_def_qps; i++) {
  struct ehea_port_res *pr = &port->port_res[i];
  int ret;
  swqe = ehea_get_swqe(pr->qp, &swqe_index);
  memset(swqe, 0, SWQE_HEADER_SIZE);
  atomic_dec(&pr->swqe_avail);

  swqe->tx_control |= EHEA_SWQE_PURGE;
  swqe->wr_id = SWQE_RESTART_CHECK;
  swqe->tx_control |= EHEA_SWQE_SIGNALLED_COMPLETION;
  swqe->tx_control |= EHEA_SWQE_IMM_DATA_PRESENT;
  swqe->immediate_data_length = 80;

  ehea_post_swqe(pr->qp, swqe);

  ret = wait_event_timeout(port->restart_wq,
      pr->sq_restart_flag == 0,
      msecs_to_jiffies(100));

  if (!ret) {
   pr_err("HW/SW queues out of sync\n");
   ehea_schedule_port_reset(pr->port);
   return;
  }
 }
}
