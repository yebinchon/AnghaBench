
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int csum; } ;
struct mlx5e_rq_stats {int csum_complete_tail; } ;


 int MAX_PADDING ;
 int csum_block_add (int ,int ,int) ;
 int csum_partial (void*,int,int ) ;
 void* skb_header_pointer (struct sk_buff*,int,int,int *) ;
 int tail_padding_csum_slow (struct sk_buff*,int,int,struct mlx5e_rq_stats*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
tail_padding_csum(struct sk_buff *skb, int offset,
    struct mlx5e_rq_stats *stats)
{
 u8 tail_padding[MAX_PADDING];
 int len = skb->len - offset;
 void *tail;

 if (unlikely(len > MAX_PADDING)) {
  tail_padding_csum_slow(skb, offset, len, stats);
  return;
 }

 tail = skb_header_pointer(skb, offset, len, tail_padding);
 if (unlikely(!tail)) {
  tail_padding_csum_slow(skb, offset, len, stats);
  return;
 }

 stats->csum_complete_tail++;
 skb->csum = csum_block_add(skb->csum, csum_partial(tail, len, 0), offset);
}
