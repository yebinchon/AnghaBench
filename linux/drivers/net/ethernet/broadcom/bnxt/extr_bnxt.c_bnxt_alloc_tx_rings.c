
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct tx_push_bd {int dummy; } ;
struct pci_dev {int dev; } ;
struct bnxt_ring_struct {int queue_id; int grp_idx; int ring_mem; } ;
struct bnxt_tx_ring_info {int data_mapping; scalar_t__ tx_push_mapping; int tx_push; TYPE_1__* bnapi; struct bnxt_ring_struct tx_ring_struct; } ;
struct bnxt {int tx_push_size; int tx_nr_rings; size_t* tc_to_qidx; int tx_nr_rings_xdp; int tx_nr_rings_per_tc; TYPE_2__* q_info; struct bnxt_tx_ring_info* tx_ring; scalar_t__ tx_push_thresh; struct pci_dev* pdev; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {int queue_id; } ;
struct TYPE_3__ {int index; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int L1_CACHE_ALIGN (scalar_t__) ;
 int bnxt_alloc_ring (struct bnxt*,int *) ;
 int cpu_to_le64 (scalar_t__) ;
 int dma_alloc_coherent (int *,int,scalar_t__*,int ) ;

__attribute__((used)) static int bnxt_alloc_tx_rings(struct bnxt *bp)
{
 int i, j, rc;
 struct pci_dev *pdev = bp->pdev;

 bp->tx_push_size = 0;
 if (bp->tx_push_thresh) {
  int push_size;

  push_size = L1_CACHE_ALIGN(sizeof(struct tx_push_bd) +
     bp->tx_push_thresh);

  if (push_size > 256) {
   push_size = 0;
   bp->tx_push_thresh = 0;
  }

  bp->tx_push_size = push_size;
 }

 for (i = 0, j = 0; i < bp->tx_nr_rings; i++) {
  struct bnxt_tx_ring_info *txr = &bp->tx_ring[i];
  struct bnxt_ring_struct *ring;
  u8 qidx;

  ring = &txr->tx_ring_struct;

  rc = bnxt_alloc_ring(bp, &ring->ring_mem);
  if (rc)
   return rc;

  ring->grp_idx = txr->bnapi->index;
  if (bp->tx_push_size) {
   dma_addr_t mapping;




   txr->tx_push = dma_alloc_coherent(&pdev->dev,
      bp->tx_push_size,
      &txr->tx_push_mapping,
      GFP_KERNEL);

   if (!txr->tx_push)
    return -ENOMEM;

   mapping = txr->tx_push_mapping +
    sizeof(struct tx_push_bd);
   txr->data_mapping = cpu_to_le64(mapping);
  }
  qidx = bp->tc_to_qidx[j];
  ring->queue_id = bp->q_info[qidx].queue_id;
  if (i < bp->tx_nr_rings_xdp)
   continue;
  if (i % bp->tx_nr_rings_per_tc == (bp->tx_nr_rings_per_tc - 1))
   j++;
 }
 return 0;
}
