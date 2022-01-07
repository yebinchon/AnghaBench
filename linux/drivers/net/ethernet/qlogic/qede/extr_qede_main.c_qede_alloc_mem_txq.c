
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union eth_tx_bd_types {int dummy; } eth_tx_bd_types ;
struct TYPE_4__ {void* skbs; void* xdp; } ;
struct qede_tx_queue {int num_tx_buffers; int tx_pbl; TYPE_1__ sw_tx_ring; scalar_t__ is_xdp; } ;
struct qede_dev {int q_num_tx_buffers; int cdev; TYPE_3__* ops; } ;
struct TYPE_6__ {TYPE_2__* common; } ;
struct TYPE_5__ {int (* chain_alloc ) (int ,int ,int ,int ,int,int,int *,int *) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_CHAIN_CNT_TYPE_U16 ;
 int QED_CHAIN_MODE_PBL ;
 int QED_CHAIN_USE_TO_CONSUME_PRODUCE ;
 void* kzalloc (int,int ) ;
 int qede_free_mem_txq (struct qede_dev*,struct qede_tx_queue*) ;
 int stub1 (int ,int ,int ,int ,int,int,int *,int *) ;

__attribute__((used)) static int qede_alloc_mem_txq(struct qede_dev *edev, struct qede_tx_queue *txq)
{
 union eth_tx_bd_types *p_virt;
 int size, rc;

 txq->num_tx_buffers = edev->q_num_tx_buffers;


 if (txq->is_xdp) {
  size = sizeof(*txq->sw_tx_ring.xdp) * txq->num_tx_buffers;
  txq->sw_tx_ring.xdp = kzalloc(size, GFP_KERNEL);
  if (!txq->sw_tx_ring.xdp)
   goto err;
 } else {
  size = sizeof(*txq->sw_tx_ring.skbs) * txq->num_tx_buffers;
  txq->sw_tx_ring.skbs = kzalloc(size, GFP_KERNEL);
  if (!txq->sw_tx_ring.skbs)
   goto err;
 }

 rc = edev->ops->common->chain_alloc(edev->cdev,
         QED_CHAIN_USE_TO_CONSUME_PRODUCE,
         QED_CHAIN_MODE_PBL,
         QED_CHAIN_CNT_TYPE_U16,
         txq->num_tx_buffers,
         sizeof(*p_virt),
         &txq->tx_pbl, ((void*)0));
 if (rc)
  goto err;

 return 0;

err:
 qede_free_mem_txq(edev, txq);
 return -ENOMEM;
}
