
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_txq_pcpu {int reserved_num; scalar_t__ count; } ;
struct mvpp2_tx_queue {int size; int pcpu; } ;
struct mvpp2_port {TYPE_1__* priv; } ;
struct TYPE_2__ {unsigned int nthreads; } ;


 int ENOMEM ;
 int MVPP2_CPU_DESC_CHUNK ;
 int MVPP2_MAX_THREADS ;
 int max (int,int) ;
 scalar_t__ mvpp2_txq_alloc_reserved_desc (struct mvpp2_port*,struct mvpp2_tx_queue*,int) ;
 struct mvpp2_txq_pcpu* per_cpu_ptr (int ,unsigned int) ;

__attribute__((used)) static int mvpp2_txq_reserved_desc_num_proc(struct mvpp2_port *port,
         struct mvpp2_tx_queue *txq,
         struct mvpp2_txq_pcpu *txq_pcpu,
         int num)
{
 int req, desc_count;
 unsigned int thread;

 if (txq_pcpu->reserved_num >= num)
  return 0;





 desc_count = 0;

 for (thread = 0; thread < port->priv->nthreads; thread++) {
  struct mvpp2_txq_pcpu *txq_pcpu_aux;

  txq_pcpu_aux = per_cpu_ptr(txq->pcpu, thread);
  desc_count += txq_pcpu_aux->count;
  desc_count += txq_pcpu_aux->reserved_num;
 }

 req = max(MVPP2_CPU_DESC_CHUNK, num - txq_pcpu->reserved_num);
 desc_count += req;

 if (desc_count >
    (txq->size - (MVPP2_MAX_THREADS * MVPP2_CPU_DESC_CHUNK)))
  return -ENOMEM;

 txq_pcpu->reserved_num += mvpp2_txq_alloc_reserved_desc(port, txq, req);


 if (txq_pcpu->reserved_num < num)
  return -ENOMEM;
 return 0;
}
