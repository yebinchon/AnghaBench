
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int isr_flag; TYPE_3__* llc_rx_tail; TYPE_3__* llc_rx_pipe; int queued_rx_frames; } ;
struct TYPE_7__ {TYPE_1__ hwm; } ;
struct s_smc {TYPE_2__ os; } ;
struct TYPE_8__ {struct TYPE_8__* sm_next; } ;
typedef TYPE_3__ SMbuf ;


 int DB_GEN (int,char*,TYPE_3__*) ;
 int smt_force_irq (struct s_smc*) ;

__attribute__((used)) static void queue_llc_rx(struct s_smc *smc, SMbuf *mb)
{
 DB_GEN(4, "queue_llc_rx: mb = %p", mb);
 smc->os.hwm.queued_rx_frames++ ;
 mb->sm_next = (SMbuf *)((void*)0) ;
 if (smc->os.hwm.llc_rx_pipe == ((void*)0)) {
  smc->os.hwm.llc_rx_pipe = mb ;
 }
 else {
  smc->os.hwm.llc_rx_tail->sm_next = mb ;
 }
 smc->os.hwm.llc_rx_tail = mb ;




 if (!smc->os.hwm.isr_flag) {
  smt_force_irq(smc) ;
 }
}
