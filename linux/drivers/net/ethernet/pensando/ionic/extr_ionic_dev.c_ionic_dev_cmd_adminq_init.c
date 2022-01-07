
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq_ring_base; int ring_base; int ring_size; int intr_index; int pid; int flags; int index; int type; int lif_index; int opcode; } ;
union ionic_dev_cmd {TYPE_1__ q_init; } ;
typedef int u16 ;
struct ionic_queue {int pid; int base_pa; int num_descs; int index; int type; } ;
struct ionic_cq {int base_pa; } ;
struct ionic_qcq {struct ionic_cq cq; struct ionic_queue q; } ;
struct ionic_dev {int dummy; } ;


 int IONIC_CMD_Q_INIT ;
 int IONIC_QINIT_F_ENA ;
 int IONIC_QINIT_F_IRQ ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int ilog2 (int ) ;
 int ionic_dev_cmd_go (struct ionic_dev*,union ionic_dev_cmd*) ;

void ionic_dev_cmd_adminq_init(struct ionic_dev *idev, struct ionic_qcq *qcq,
          u16 lif_index, u16 intr_index)
{
 struct ionic_queue *q = &qcq->q;
 struct ionic_cq *cq = &qcq->cq;

 union ionic_dev_cmd cmd = {
  .q_init.opcode = IONIC_CMD_Q_INIT,
  .q_init.lif_index = cpu_to_le16(lif_index),
  .q_init.type = q->type,
  .q_init.index = cpu_to_le32(q->index),
  .q_init.flags = cpu_to_le16(IONIC_QINIT_F_IRQ |
         IONIC_QINIT_F_ENA),
  .q_init.pid = cpu_to_le16(q->pid),
  .q_init.intr_index = cpu_to_le16(intr_index),
  .q_init.ring_size = ilog2(q->num_descs),
  .q_init.ring_base = cpu_to_le64(q->base_pa),
  .q_init.cq_ring_base = cpu_to_le64(cq->base_pa),
 };

 ionic_dev_cmd_go(idev, &cmd);
}
