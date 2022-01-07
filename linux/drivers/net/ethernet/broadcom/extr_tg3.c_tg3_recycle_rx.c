
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tg3_rx_prodring_set {struct ring_info* rx_jmb_buffers; TYPE_2__* rx_jmb; struct ring_info* rx_std_buffers; struct tg3_rx_buffer_desc* rx_std; } ;
struct tg3_rx_buffer_desc {int addr_lo; int addr_hi; } ;
struct tg3_napi {struct tg3* tp; } ;
struct tg3 {int rx_std_ring_mask; int rx_jmb_ring_mask; TYPE_1__* napi; } ;
struct ring_info {int * data; } ;
struct TYPE_4__ {struct tg3_rx_buffer_desc std; } ;
struct TYPE_3__ {struct tg3_rx_prodring_set prodring; } ;




 int dma_unmap_addr (struct ring_info*,int ) ;
 int dma_unmap_addr_set (struct ring_info*,int ,int ) ;
 int mapping ;
 int smp_wmb () ;

__attribute__((used)) static void tg3_recycle_rx(struct tg3_napi *tnapi,
      struct tg3_rx_prodring_set *dpr,
      u32 opaque_key, int src_idx,
      u32 dest_idx_unmasked)
{
 struct tg3 *tp = tnapi->tp;
 struct tg3_rx_buffer_desc *src_desc, *dest_desc;
 struct ring_info *src_map, *dest_map;
 struct tg3_rx_prodring_set *spr = &tp->napi[0].prodring;
 int dest_idx;

 switch (opaque_key) {
 case 128:
  dest_idx = dest_idx_unmasked & tp->rx_std_ring_mask;
  dest_desc = &dpr->rx_std[dest_idx];
  dest_map = &dpr->rx_std_buffers[dest_idx];
  src_desc = &spr->rx_std[src_idx];
  src_map = &spr->rx_std_buffers[src_idx];
  break;

 case 129:
  dest_idx = dest_idx_unmasked & tp->rx_jmb_ring_mask;
  dest_desc = &dpr->rx_jmb[dest_idx].std;
  dest_map = &dpr->rx_jmb_buffers[dest_idx];
  src_desc = &spr->rx_jmb[src_idx].std;
  src_map = &spr->rx_jmb_buffers[src_idx];
  break;

 default:
  return;
 }

 dest_map->data = src_map->data;
 dma_unmap_addr_set(dest_map, mapping,
      dma_unmap_addr(src_map, mapping));
 dest_desc->addr_hi = src_desc->addr_hi;
 dest_desc->addr_lo = src_desc->addr_lo;




 smp_wmb();

 src_map->data = ((void*)0);
}
