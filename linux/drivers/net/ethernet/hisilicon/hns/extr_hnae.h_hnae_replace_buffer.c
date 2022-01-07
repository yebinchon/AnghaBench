
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hnae_ring {TYPE_2__* desc; struct hnae_desc_cb* desc_cb; TYPE_4__* q; } ;
struct hnae_desc_cb {int dma; } ;
struct hnae_buf_ops {int (* unmap_buffer ) (struct hnae_ring*,struct hnae_desc_cb*) ;} ;
struct TYPE_8__ {TYPE_3__* handle; } ;
struct TYPE_7__ {struct hnae_buf_ops* bops; } ;
struct TYPE_5__ {scalar_t__ ipoff_bnum_pid_flag; } ;
struct TYPE_6__ {TYPE_1__ rx; int addr; } ;


 int cpu_to_le64 (int ) ;
 int stub1 (struct hnae_ring*,struct hnae_desc_cb*) ;

__attribute__((used)) static inline void hnae_replace_buffer(struct hnae_ring *ring, int i,
           struct hnae_desc_cb *res_cb)
{
 struct hnae_buf_ops *bops = ring->q->handle->bops;

 bops->unmap_buffer(ring, &ring->desc_cb[i]);
 ring->desc_cb[i] = *res_cb;
 ring->desc[i].addr = cpu_to_le64(ring->desc_cb[i].dma);
 ring->desc[i].rx.ipoff_bnum_pid_flag = 0;
}
