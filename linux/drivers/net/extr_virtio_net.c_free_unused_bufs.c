
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtqueue {int dummy; } ;
struct virtnet_info {int max_queue_pairs; TYPE_2__* rq; scalar_t__ big_packets; scalar_t__ mergeable_rx_bufs; TYPE_1__* sq; } ;
struct TYPE_4__ {struct virtqueue* vq; } ;
struct TYPE_3__ {struct virtqueue* vq; } ;


 int dev_kfree_skb (void*) ;
 int give_pages (TYPE_2__*,void*) ;
 int is_xdp_frame (void*) ;
 int ptr_to_xdp (void*) ;
 int put_page (int ) ;
 int virt_to_head_page (void*) ;
 void* virtqueue_detach_unused_buf (struct virtqueue*) ;
 int xdp_return_frame (int ) ;

__attribute__((used)) static void free_unused_bufs(struct virtnet_info *vi)
{
 void *buf;
 int i;

 for (i = 0; i < vi->max_queue_pairs; i++) {
  struct virtqueue *vq = vi->sq[i].vq;
  while ((buf = virtqueue_detach_unused_buf(vq)) != ((void*)0)) {
   if (!is_xdp_frame(buf))
    dev_kfree_skb(buf);
   else
    xdp_return_frame(ptr_to_xdp(buf));
  }
 }

 for (i = 0; i < vi->max_queue_pairs; i++) {
  struct virtqueue *vq = vi->rq[i].vq;

  while ((buf = virtqueue_detach_unused_buf(vq)) != ((void*)0)) {
   if (vi->mergeable_rx_bufs) {
    put_page(virt_to_head_page(buf));
   } else if (vi->big_packets) {
    give_pages(&vi->rq[i], buf);
   } else {
    put_page(virt_to_head_page(buf));
   }
  }
 }
}
