
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int base; } ;
struct snd_queue {int xdp_free_cnt; int is_xdp; int tso_hdrs; int tso_hdrs_phys; int free_cnt; scalar_t__ xdp_desc_cnt; int * xdp_page; int thresh; scalar_t__ tail; scalar_t__ head; void* skbuff; TYPE_3__ dmem; int desc; } ;
struct nicvf {int sqs_id; TYPE_2__* pdev; TYPE_1__* pnicvf; scalar_t__ sqs_mode; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int xdp_tx_queues; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_SND_QUEUES_PER_QS ;
 int NICVF_SQ_BASE_ALIGN_BYTES ;
 int SND_QUEUE_DESC_SIZE ;
 int SND_QUEUE_THRESH ;
 int TSO_HEADER_SIZE ;
 int atomic_set (int *,int) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 void* kcalloc (int,int,int ) ;
 int nicvf_alloc_q_desc_mem (struct nicvf*,TYPE_3__*,int,int ,int ) ;

__attribute__((used)) static int nicvf_init_snd_queue(struct nicvf *nic,
    struct snd_queue *sq, int q_len, int qidx)
{
 int err;

 err = nicvf_alloc_q_desc_mem(nic, &sq->dmem, q_len, SND_QUEUE_DESC_SIZE,
         NICVF_SQ_BASE_ALIGN_BYTES);
 if (err)
  return err;

 sq->desc = sq->dmem.base;
 sq->skbuff = kcalloc(q_len, sizeof(u64), GFP_KERNEL);
 if (!sq->skbuff)
  return -ENOMEM;

 sq->head = 0;
 sq->tail = 0;
 sq->thresh = SND_QUEUE_THRESH;


 if (nic->sqs_mode)
  qidx += ((nic->sqs_id + 1) * MAX_SND_QUEUES_PER_QS);
 if (qidx < nic->pnicvf->xdp_tx_queues) {

  sq->xdp_page = kcalloc(q_len, sizeof(u64), GFP_KERNEL);
  if (!sq->xdp_page)
   return -ENOMEM;
  sq->xdp_desc_cnt = 0;
  sq->xdp_free_cnt = q_len - 1;
  sq->is_xdp = 1;
 } else {
  sq->xdp_page = ((void*)0);
  sq->xdp_desc_cnt = 0;
  sq->xdp_free_cnt = 0;
  sq->is_xdp = 0;

  atomic_set(&sq->free_cnt, q_len - 1);


  sq->tso_hdrs = dma_alloc_coherent(&nic->pdev->dev,
        q_len * TSO_HEADER_SIZE,
        &sq->tso_hdrs_phys,
        GFP_KERNEL);
  if (!sq->tso_hdrs)
   return -ENOMEM;
 }

 return 0;
}
