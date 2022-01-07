
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {scalar_t__ metasize; int len; struct virtio_net_hdr_mrg_rxbuf* data; int headroom; } ;
struct virtnet_info {int hdr_len; } ;
struct virtio_net_hdr_mrg_rxbuf {int dummy; } ;
struct send_queue {int sg; int vq; } ;


 int ENOSPC ;
 int EOPNOTSUPP ;
 int EOVERFLOW ;
 int GFP_ATOMIC ;
 int memset (struct virtio_net_hdr_mrg_rxbuf*,int ,int ) ;
 int sg_init_one (int ,struct virtio_net_hdr_mrg_rxbuf*,int ) ;
 scalar_t__ unlikely (int) ;
 int virtqueue_add_outbuf (int ,int ,int,int ,int ) ;
 int xdp_to_ptr (struct xdp_frame*) ;

__attribute__((used)) static int __virtnet_xdp_xmit_one(struct virtnet_info *vi,
       struct send_queue *sq,
       struct xdp_frame *xdpf)
{
 struct virtio_net_hdr_mrg_rxbuf *hdr;
 int err;


 if (unlikely(xdpf->metasize > 0))
  return -EOPNOTSUPP;

 if (unlikely(xdpf->headroom < vi->hdr_len))
  return -EOVERFLOW;


 xdpf->data -= vi->hdr_len;

 hdr = xdpf->data;
 memset(hdr, 0, vi->hdr_len);
 xdpf->len += vi->hdr_len;

 sg_init_one(sq->sg, xdpf->data, xdpf->len);

 err = virtqueue_add_outbuf(sq->vq, sq->sg, 1, xdp_to_ptr(xdpf),
       GFP_ATOMIC);
 if (unlikely(err))
  return -ENOSPC;

 return 0;
}
