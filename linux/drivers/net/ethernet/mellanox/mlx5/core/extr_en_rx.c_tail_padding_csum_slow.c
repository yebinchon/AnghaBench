
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int csum; } ;
struct mlx5e_rq_stats {int csum_complete_tail_slow; } ;


 int csum_block_add (int ,int ,int) ;
 int skb_checksum (struct sk_buff*,int,int,int ) ;

__attribute__((used)) static void
tail_padding_csum_slow(struct sk_buff *skb, int offset, int len,
         struct mlx5e_rq_stats *stats)
{
 stats->csum_complete_tail_slow++;
 skb->csum = csum_block_add(skb->csum,
       skb_checksum(skb, offset, len, 0),
       offset);
}
