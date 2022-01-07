
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct mlx5e_rq {TYPE_1__* stats; } ;
struct TYPE_2__ {int buff_alloc_err; } ;


 struct sk_buff* build_skb (void*,int ) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline
struct sk_buff *mlx5e_build_linear_skb(struct mlx5e_rq *rq, void *va,
           u32 frag_size, u16 headroom,
           u32 cqe_bcnt)
{
 struct sk_buff *skb = build_skb(va, frag_size);

 if (unlikely(!skb)) {
  rq->stats->buff_alloc_err++;
  return ((void*)0);
 }

 skb_reserve(skb, headroom);
 skb_put(skb, cqe_bcnt);

 return skb;
}
