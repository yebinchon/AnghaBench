
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct xgene_enet_raw_desc {int m0; } ;
struct xgene_enet_pdata {int* txc_level; TYPE_1__* ring_ops; } ;
struct xgene_enet_desc_ring {size_t head; size_t slots; size_t index; struct xgene_enet_raw_desc* raw_desc; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* wr_cmd ) (struct xgene_enet_desc_ring*,int) ;} ;


 scalar_t__ GET_BIT (int ,int ) ;
 int NV ;
 scalar_t__ __netif_subqueue_stopped (struct net_device*,size_t) ;
 int dma_rmb () ;
 scalar_t__ is_rx_desc (struct xgene_enet_raw_desc*) ;
 int le64_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 int netif_start_subqueue (struct net_device*,size_t) ;
 int stub1 (struct xgene_enet_desc_ring*,int) ;
 scalar_t__ unlikely (int ) ;
 int xgene_enet_is_desc_slot_empty (struct xgene_enet_raw_desc*) ;
 int xgene_enet_mark_desc_slot_empty (struct xgene_enet_raw_desc*) ;
 int xgene_enet_rx_frame (struct xgene_enet_desc_ring*,struct xgene_enet_raw_desc*,struct xgene_enet_raw_desc*) ;
 int xgene_enet_tx_completion (struct xgene_enet_desc_ring*,struct xgene_enet_raw_desc*) ;

__attribute__((used)) static int xgene_enet_process_ring(struct xgene_enet_desc_ring *ring,
       int budget)
{
 struct net_device *ndev = ring->ndev;
 struct xgene_enet_pdata *pdata = netdev_priv(ndev);
 struct xgene_enet_raw_desc *raw_desc, *exp_desc;
 u16 head = ring->head;
 u16 slots = ring->slots - 1;
 int ret, desc_count, count = 0, processed = 0;
 bool is_completion;

 do {
  raw_desc = &ring->raw_desc[head];
  desc_count = 0;
  is_completion = 0;
  exp_desc = ((void*)0);
  if (unlikely(xgene_enet_is_desc_slot_empty(raw_desc)))
   break;


  dma_rmb();
  if (GET_BIT(NV, le64_to_cpu(raw_desc->m0))) {
   head = (head + 1) & slots;
   exp_desc = &ring->raw_desc[head];

   if (unlikely(xgene_enet_is_desc_slot_empty(exp_desc))) {
    head = (head - 1) & slots;
    break;
   }
   dma_rmb();
   count++;
   desc_count++;
  }
  if (is_rx_desc(raw_desc)) {
   ret = xgene_enet_rx_frame(ring, raw_desc, exp_desc);
  } else {
   ret = xgene_enet_tx_completion(ring, raw_desc);
   is_completion = 1;
  }
  xgene_enet_mark_desc_slot_empty(raw_desc);
  if (exp_desc)
   xgene_enet_mark_desc_slot_empty(exp_desc);

  head = (head + 1) & slots;
  count++;
  desc_count++;
  processed++;
  if (is_completion)
   pdata->txc_level[ring->index] += desc_count;

  if (ret)
   break;
 } while (--budget);

 if (likely(count)) {
  pdata->ring_ops->wr_cmd(ring, -count);
  ring->head = head;

  if (__netif_subqueue_stopped(ndev, ring->index))
   netif_start_subqueue(ndev, ring->index);
 }

 return processed;
}
