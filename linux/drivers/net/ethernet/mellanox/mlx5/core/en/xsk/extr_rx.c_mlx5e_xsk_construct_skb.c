
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int napi; } ;
struct mlx5e_rq {TYPE_2__* stats; TYPE_1__ cq; } ;
struct TYPE_4__ {int buff_alloc_err; } ;


 struct sk_buff* napi_alloc_skb (int ,int ) ;
 int skb_put_data (struct sk_buff*,void*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *mlx5e_xsk_construct_skb(struct mlx5e_rq *rq, void *data,
            u32 cqe_bcnt)
{
 struct sk_buff *skb;

 skb = napi_alloc_skb(rq->cq.napi, cqe_bcnt);
 if (unlikely(!skb)) {
  rq->stats->buff_alloc_err++;
  return ((void*)0);
 }

 skb_put_data(skb, data, cqe_bcnt);

 return skb;
}
