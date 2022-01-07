
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ seqno; struct gve_rx_desc* desc_ring; } ;
struct gve_rx_ring {int cnt; int mask; TYPE_1__ desc; } ;
struct gve_rx_desc {int flags_seq; } ;
typedef int __be16 ;


 scalar_t__ GVE_SEQNO (int ) ;
 int smp_rmb () ;

__attribute__((used)) static bool gve_rx_work_pending(struct gve_rx_ring *rx)
{
 struct gve_rx_desc *desc;
 __be16 flags_seq;
 u32 next_idx;

 next_idx = rx->cnt & rx->mask;
 desc = rx->desc.desc_ring + next_idx;

 flags_seq = desc->flags_seq;

 smp_rmb();

 return (GVE_SEQNO(flags_seq) == rx->desc.seqno);
}
