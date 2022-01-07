
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct octeon_droq {TYPE_1__* recv_buf_list; } ;
struct TYPE_2__ {int buffer; } ;


 int get_rbd (int ) ;
 int skb_put_data (struct sk_buff*,int ,int) ;

__attribute__((used)) static inline void octeon_fast_packet_next(struct octeon_droq *droq,
        struct sk_buff *nicbuf,
        int copy_len,
        int idx)
{
 skb_put_data(nicbuf, get_rbd(droq->recv_buf_list[idx].buffer),
       copy_len);
}
