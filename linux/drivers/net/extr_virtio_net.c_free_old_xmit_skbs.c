
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_frame {scalar_t__ len; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {unsigned int bytes; unsigned int packets; int syncp; } ;
struct send_queue {TYPE_1__ stats; int vq; } ;


 int is_xdp_frame (void*) ;
 scalar_t__ likely (int) ;
 int napi_consume_skb (struct sk_buff*,int) ;
 int pr_debug (char*,struct sk_buff*) ;
 struct xdp_frame* ptr_to_xdp (void*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 void* virtqueue_get_buf (int ,unsigned int*) ;
 int xdp_return_frame (struct xdp_frame*) ;

__attribute__((used)) static void free_old_xmit_skbs(struct send_queue *sq, bool in_napi)
{
 unsigned int len;
 unsigned int packets = 0;
 unsigned int bytes = 0;
 void *ptr;

 while ((ptr = virtqueue_get_buf(sq->vq, &len)) != ((void*)0)) {
  if (likely(!is_xdp_frame(ptr))) {
   struct sk_buff *skb = ptr;

   pr_debug("Sent skb %p\n", skb);

   bytes += skb->len;
   napi_consume_skb(skb, in_napi);
  } else {
   struct xdp_frame *frame = ptr_to_xdp(ptr);

   bytes += frame->len;
   xdp_return_frame(frame);
  }
  packets++;
 }




 if (!packets)
  return;

 u64_stats_update_begin(&sq->stats.syncp);
 sq->stats.bytes += bytes;
 sq->stats.packets += packets;
 u64_stats_update_end(&sq->stats.syncp);
}
