
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {unsigned int hdr_len; } ;
struct skb_shared_info {int dummy; } ;
struct page_frag {int offset; int page; } ;
struct receive_queue {int sg; int vq; struct page_frag alloc_frag; } ;
typedef int gfp_t ;


 int ENOMEM ;
 unsigned int GOOD_PACKET_LEN ;
 int SKB_DATA_ALIGN (int) ;
 int VIRTNET_RX_PAD ;
 int get_page (int ) ;
 scalar_t__ page_address (int ) ;
 int put_page (int ) ;
 int sg_init_one (int ,char*,unsigned int) ;
 int skb_page_frag_refill (int,struct page_frag*,int ) ;
 scalar_t__ unlikely (int) ;
 int virt_to_head_page (char*) ;
 unsigned int virtnet_get_headroom (struct virtnet_info*) ;
 int virtqueue_add_inbuf_ctx (int ,int ,int,char*,void*,int ) ;

__attribute__((used)) static int add_recvbuf_small(struct virtnet_info *vi, struct receive_queue *rq,
        gfp_t gfp)
{
 struct page_frag *alloc_frag = &rq->alloc_frag;
 char *buf;
 unsigned int xdp_headroom = virtnet_get_headroom(vi);
 void *ctx = (void *)(unsigned long)xdp_headroom;
 int len = vi->hdr_len + VIRTNET_RX_PAD + GOOD_PACKET_LEN + xdp_headroom;
 int err;

 len = SKB_DATA_ALIGN(len) +
       SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
 if (unlikely(!skb_page_frag_refill(len, alloc_frag, gfp)))
  return -ENOMEM;

 buf = (char *)page_address(alloc_frag->page) + alloc_frag->offset;
 get_page(alloc_frag->page);
 alloc_frag->offset += len;
 sg_init_one(rq->sg, buf + VIRTNET_RX_PAD + xdp_headroom,
      vi->hdr_len + GOOD_PACKET_LEN);
 err = virtqueue_add_inbuf_ctx(rq->vq, rq->sg, 1, buf, ctx, gfp);
 if (err < 0)
  put_page(virt_to_head_page(buf));
 return err;
}
