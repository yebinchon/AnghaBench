
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae_ring {struct hnae_desc_cb* desc_cb; TYPE_2__* q; } ;
struct hnae_desc_cb {int dma; } ;
struct hnae_buf_ops {int (* free_buffer ) (struct hnae_ring*,struct hnae_desc_cb*) ;} ;
struct TYPE_4__ {TYPE_1__* handle; } ;
struct TYPE_3__ {struct hnae_buf_ops* bops; } ;


 int hnae_buffer_detach (struct hnae_ring*,int) ;
 int stub1 (struct hnae_ring*,struct hnae_desc_cb*) ;

__attribute__((used)) static inline void hnae_free_buffer_detach(struct hnae_ring *ring, int i)
{
 struct hnae_buf_ops *bops = ring->q->handle->bops;
 struct hnae_desc_cb *cb = &ring->desc_cb[i];

 if (!ring->desc_cb[i].dma)
  return;

 hnae_buffer_detach(ring, i);
 bops->free_buffer(ring, cb);
}
