
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hnae_ring {int desc_num; TYPE_2__* desc_cb; TYPE_1__* desc; } ;
struct hnae_handle {int q_num; TYPE_3__** qs; } ;
struct TYPE_6__ {struct hnae_ring rx_ring; } ;
struct TYPE_5__ {int dma; } ;
struct TYPE_4__ {int addr; } ;


 int cpu_to_le64 (int ) ;
 int wmb () ;

__attribute__((used)) static inline void hnae_reinit_all_ring_desc(struct hnae_handle *h)
{
 int i, j;
 struct hnae_ring *ring;

 for (i = 0; i < h->q_num; i++) {
  ring = &h->qs[i]->rx_ring;
  for (j = 0; j < ring->desc_num; j++)
   ring->desc[j].addr = cpu_to_le64(ring->desc_cb[j].dma);
 }

 wmb();
}
