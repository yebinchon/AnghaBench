
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mvpp2_txq_pcpu {int size; int * tso_headers; scalar_t__ tso_headers_dma; int buffs; } ;
struct mvpp2_tx_queue {int size; int id; int log_id; scalar_t__ descs_dma; scalar_t__ next_desc_to_proc; scalar_t__ last_desc; int * descs; int pcpu; } ;
struct mvpp2_port {TYPE_3__* priv; TYPE_2__* dev; } ;
struct TYPE_8__ {unsigned int nthreads; } ;
struct TYPE_6__ {int parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int MVPP2_DESC_ALIGNED_SIZE ;
 int MVPP2_TXQ_DESC_ADDR_REG ;
 int MVPP2_TXQ_DESC_SIZE_REG ;
 int MVPP2_TXQ_NUM_REG ;
 int MVPP2_TXQ_SCHED_TOKEN_CNTR_REG (int ) ;
 int TSO_HEADER_SIZE ;
 int dma_free_coherent (int ,int,int *,scalar_t__) ;
 int get_cpu () ;
 int kfree (int ) ;
 unsigned int mvpp2_cpu_to_thread (TYPE_3__*,int ) ;
 int mvpp2_thread_write (TYPE_3__*,unsigned int,int ,int ) ;
 int mvpp2_write (TYPE_3__*,int ,int ) ;
 struct mvpp2_txq_pcpu* per_cpu_ptr (int ,unsigned int) ;
 int put_cpu () ;

__attribute__((used)) static void mvpp2_txq_deinit(struct mvpp2_port *port,
        struct mvpp2_tx_queue *txq)
{
 struct mvpp2_txq_pcpu *txq_pcpu;
 unsigned int thread;

 for (thread = 0; thread < port->priv->nthreads; thread++) {
  txq_pcpu = per_cpu_ptr(txq->pcpu, thread);
  kfree(txq_pcpu->buffs);

  if (txq_pcpu->tso_headers)
   dma_free_coherent(port->dev->dev.parent,
       txq_pcpu->size * TSO_HEADER_SIZE,
       txq_pcpu->tso_headers,
       txq_pcpu->tso_headers_dma);

  txq_pcpu->tso_headers = ((void*)0);
 }

 if (txq->descs)
  dma_free_coherent(port->dev->dev.parent,
      txq->size * MVPP2_DESC_ALIGNED_SIZE,
      txq->descs, txq->descs_dma);

 txq->descs = ((void*)0);
 txq->last_desc = 0;
 txq->next_desc_to_proc = 0;
 txq->descs_dma = 0;


 mvpp2_write(port->priv, MVPP2_TXQ_SCHED_TOKEN_CNTR_REG(txq->log_id), 0);


 thread = mvpp2_cpu_to_thread(port->priv, get_cpu());
 mvpp2_thread_write(port->priv, thread, MVPP2_TXQ_NUM_REG, txq->id);
 mvpp2_thread_write(port->priv, thread, MVPP2_TXQ_DESC_ADDR_REG, 0);
 mvpp2_thread_write(port->priv, thread, MVPP2_TXQ_DESC_SIZE_REG, 0);
 put_cpu();
}
