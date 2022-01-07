
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct virtio_net_hdr {int flags; void* proto; scalar_t__ hdr_len; scalar_t__ csum_offset; scalar_t__ csum_start; int member_0; int member_1; } ;
struct ubuf_info {int (* callback ) (struct ubuf_info*,int) ;} ;
struct tun_struct {size_t align; int flags; int numqueues; TYPE_6__* pcpu_stats; TYPE_7__* dev; int steering_prog; int xdp_prog; int vnet_hdr_sz; } ;
struct tun_pi {int flags; void* proto; scalar_t__ hdr_len; scalar_t__ csum_offset; scalar_t__ csum_start; int member_0; int member_1; } ;
struct tun_pcpu_stats {size_t rx_bytes; int syncp; int rx_packets; } ;
struct TYPE_11__ {int * skb; } ;
struct sk_buff_head {int lock; } ;
struct TYPE_9__ {struct sk_buff_head sk_write_queue; } ;
struct tun_file {TYPE_3__ napi; TYPE_1__ sk; scalar_t__ napi_enabled; int napi_mutex; int detached; } ;
struct sk_buff {int* data; void* protocol; TYPE_7__* dev; int len; } ;
struct iov_iter {int dummy; } ;
struct bpf_prog {int dummy; } ;
typedef size_t ssize_t ;
typedef int pi ;
typedef int gso ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int rx_dropped; int rx_frame_errors; } ;
struct TYPE_10__ {int tx_flags; void* destructor_arg; } ;


 int CONFIG_4KSTACKS ;
 size_t EAGAIN ;
 size_t EFAULT ;
 size_t EINVAL ;
 int EIO ;
 size_t ENOMEM ;
 size_t ETH_HLEN ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int GOODCOPY_LEN ;
 int IFF_NO_PI ;


 int IFF_UP ;
 int IFF_VNET_HDR ;
 int INT_MAX ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 scalar_t__ MAX_SKB_FRAGS ;
 int NAPI_POLL_WEIGHT ;
 scalar_t__ NET_IP_ALIGN ;
 size_t PTR_ERR (struct sk_buff*) ;
 int READ_ONCE (int ) ;
 int SKBTX_DEV_ZEROCOPY ;
 int SKBTX_SHARED_FRAG ;
 int SKB_MAX_HEAD (size_t) ;
 int TUN_TYPE_MASK ;
 int VIRTIO_NET_HDR_F_NEEDS_CSUM ;
 int WARN_ON (int) ;
 int XDP_PASS ;
 scalar_t__ __skb_get_hash_symmetric (struct sk_buff*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int copy_from_iter_full (struct virtio_net_hdr*,int,struct iov_iter*) ;
 int cpu_to_be16 (int ) ;
 scalar_t__ cpu_to_tun16 (struct tun_struct*,int) ;
 int do_xdp_generic (struct bpf_prog*,struct sk_buff*) ;
 scalar_t__ eth_get_headlen (TYPE_7__*,int*,scalar_t__) ;
 void* eth_type_trans (struct sk_buff*,TYPE_7__*) ;
 struct tun_pcpu_stats* get_cpu_ptr (TYPE_6__*) ;
 void* htons (int ) ;
 int iov_iter_advance (struct iov_iter*,int) ;
 size_t iov_iter_count (struct iov_iter*) ;
 scalar_t__ iov_iter_npages (struct iov_iter*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_free_frags (TYPE_3__*) ;
 int napi_gro_frags (TYPE_3__*) ;
 int napi_schedule (TYPE_3__*) ;
 int netif_rx_ni (struct sk_buff*) ;
 int put_cpu_ptr (struct tun_pcpu_stats*) ;
 int rcu_access_pointer (int ) ;
 struct bpf_prog* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_copy_datagram_from_iter (struct sk_buff*,int ,struct iov_iter*,size_t) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 int skb_probe_transport_header (struct sk_buff*) ;
 int skb_queue_len (struct sk_buff_head*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ubuf_info*,int) ;
 int this_cpu_inc (int ) ;
 int tun16_to_cpu (struct tun_struct*,scalar_t__) ;
 struct sk_buff* tun_alloc_skb (struct tun_file*,size_t,int,size_t,int) ;
 struct sk_buff* tun_build_skb (struct tun_struct*,struct tun_file*,struct iov_iter*,struct virtio_net_hdr*,size_t,int*) ;
 scalar_t__ tun_can_build_skb (struct tun_struct*,struct tun_file*,size_t,int,int) ;
 int tun_flow_update (struct tun_struct*,scalar_t__,struct tun_file*) ;
 int tun_is_little_endian (struct tun_struct*) ;
 struct sk_buff* tun_napi_alloc_frags (struct tun_file*,int,struct iov_iter*) ;
 int tun_napi_frags_enabled (struct tun_file*) ;
 int tun_rx_batched (struct tun_struct*,struct tun_file*,struct sk_buff*,int) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ virtio_net_hdr_to_skb (struct sk_buff*,struct virtio_net_hdr*,int ) ;
 int zerocopy_sg_from_iter (struct sk_buff*,struct iov_iter*) ;

__attribute__((used)) static ssize_t tun_get_user(struct tun_struct *tun, struct tun_file *tfile,
       void *msg_control, struct iov_iter *from,
       int noblock, bool more)
{
 struct tun_pi pi = { 0, cpu_to_be16(ETH_P_IP) };
 struct sk_buff *skb;
 size_t total_len = iov_iter_count(from);
 size_t len = total_len, align = tun->align, linear;
 struct virtio_net_hdr gso = { 0 };
 struct tun_pcpu_stats *stats;
 int good_linear;
 int copylen;
 bool zerocopy = 0;
 int err;
 u32 rxhash = 0;
 int skb_xdp = 1;
 bool frags = tun_napi_frags_enabled(tfile);

 if (!(tun->flags & IFF_NO_PI)) {
  if (len < sizeof(pi))
   return -EINVAL;
  len -= sizeof(pi);

  if (!copy_from_iter_full(&pi, sizeof(pi), from))
   return -EFAULT;
 }

 if (tun->flags & IFF_VNET_HDR) {
  int vnet_hdr_sz = READ_ONCE(tun->vnet_hdr_sz);

  if (len < vnet_hdr_sz)
   return -EINVAL;
  len -= vnet_hdr_sz;

  if (!copy_from_iter_full(&gso, sizeof(gso), from))
   return -EFAULT;

  if ((gso.flags & VIRTIO_NET_HDR_F_NEEDS_CSUM) &&
      tun16_to_cpu(tun, gso.csum_start) + tun16_to_cpu(tun, gso.csum_offset) + 2 > tun16_to_cpu(tun, gso.hdr_len))
   gso.hdr_len = cpu_to_tun16(tun, tun16_to_cpu(tun, gso.csum_start) + tun16_to_cpu(tun, gso.csum_offset) + 2);

  if (tun16_to_cpu(tun, gso.hdr_len) > len)
   return -EINVAL;
  iov_iter_advance(from, vnet_hdr_sz - sizeof(gso));
 }

 if ((tun->flags & TUN_TYPE_MASK) == 129) {
  align += NET_IP_ALIGN;
  if (unlikely(len < ETH_HLEN ||
        (gso.hdr_len && tun16_to_cpu(tun, gso.hdr_len) < ETH_HLEN)))
   return -EINVAL;
 }

 good_linear = SKB_MAX_HEAD(align);

 if (msg_control) {
  struct iov_iter i = *from;





  copylen = gso.hdr_len ? tun16_to_cpu(tun, gso.hdr_len) : GOODCOPY_LEN;
  if (copylen > good_linear)
   copylen = good_linear;
  linear = copylen;
  iov_iter_advance(&i, copylen);
  if (iov_iter_npages(&i, INT_MAX) <= MAX_SKB_FRAGS)
   zerocopy = 1;
 }

 if (!frags && tun_can_build_skb(tun, tfile, len, noblock, zerocopy)) {




  skb = tun_build_skb(tun, tfile, from, &gso, len, &skb_xdp);
  if (IS_ERR(skb)) {
   this_cpu_inc(tun->pcpu_stats->rx_dropped);
   return PTR_ERR(skb);
  }
  if (!skb)
   return total_len;
 } else {
  if (!zerocopy) {
   copylen = len;
   if (tun16_to_cpu(tun, gso.hdr_len) > good_linear)
    linear = good_linear;
   else
    linear = tun16_to_cpu(tun, gso.hdr_len);
  }

  if (frags) {
   mutex_lock(&tfile->napi_mutex);
   skb = tun_napi_alloc_frags(tfile, copylen, from);




   zerocopy = 0;
  } else {
   skb = tun_alloc_skb(tfile, align, copylen, linear,
         noblock);
  }

  if (IS_ERR(skb)) {
   if (PTR_ERR(skb) != -EAGAIN)
    this_cpu_inc(tun->pcpu_stats->rx_dropped);
   if (frags)
    mutex_unlock(&tfile->napi_mutex);
   return PTR_ERR(skb);
  }

  if (zerocopy)
   err = zerocopy_sg_from_iter(skb, from);
  else
   err = skb_copy_datagram_from_iter(skb, 0, from, len);

  if (err) {
   err = -EFAULT;
drop:
   this_cpu_inc(tun->pcpu_stats->rx_dropped);
   kfree_skb(skb);
   if (frags) {
    tfile->napi.skb = ((void*)0);
    mutex_unlock(&tfile->napi_mutex);
   }

   return err;
  }
 }

 if (virtio_net_hdr_to_skb(skb, &gso, tun_is_little_endian(tun))) {
  this_cpu_inc(tun->pcpu_stats->rx_frame_errors);
  kfree_skb(skb);
  if (frags) {
   tfile->napi.skb = ((void*)0);
   mutex_unlock(&tfile->napi_mutex);
  }

  return -EINVAL;
 }

 switch (tun->flags & TUN_TYPE_MASK) {
 case 128:
  if (tun->flags & IFF_NO_PI) {
   u8 ip_version = skb->len ? (skb->data[0] >> 4) : 0;

   switch (ip_version) {
   case 4:
    pi.proto = htons(ETH_P_IP);
    break;
   case 6:
    pi.proto = htons(ETH_P_IPV6);
    break;
   default:
    this_cpu_inc(tun->pcpu_stats->rx_dropped);
    kfree_skb(skb);
    return -EINVAL;
   }
  }

  skb_reset_mac_header(skb);
  skb->protocol = pi.proto;
  skb->dev = tun->dev;
  break;
 case 129:
  if (!frags)
   skb->protocol = eth_type_trans(skb, tun->dev);
  break;
 }


 if (zerocopy) {
  skb_shinfo(skb)->destructor_arg = msg_control;
  skb_shinfo(skb)->tx_flags |= SKBTX_DEV_ZEROCOPY;
  skb_shinfo(skb)->tx_flags |= SKBTX_SHARED_FRAG;
 } else if (msg_control) {
  struct ubuf_info *uarg = msg_control;
  uarg->callback(uarg, 0);
 }

 skb_reset_network_header(skb);
 skb_probe_transport_header(skb);

 if (skb_xdp) {
  struct bpf_prog *xdp_prog;
  int ret;

  local_bh_disable();
  rcu_read_lock();
  xdp_prog = rcu_dereference(tun->xdp_prog);
  if (xdp_prog) {
   ret = do_xdp_generic(xdp_prog, skb);
   if (ret != XDP_PASS) {
    rcu_read_unlock();
    local_bh_enable();
    return total_len;
   }
  }
  rcu_read_unlock();
  local_bh_enable();
 }





 if (!rcu_access_pointer(tun->steering_prog) && tun->numqueues > 1 &&
     !tfile->detached)
  rxhash = __skb_get_hash_symmetric(skb);

 rcu_read_lock();
 if (unlikely(!(tun->dev->flags & IFF_UP))) {
  err = -EIO;
  rcu_read_unlock();
  goto drop;
 }

 if (frags) {

  u32 headlen = eth_get_headlen(tun->dev, skb->data,
           skb_headlen(skb));

  if (unlikely(headlen > skb_headlen(skb))) {
   this_cpu_inc(tun->pcpu_stats->rx_dropped);
   napi_free_frags(&tfile->napi);
   rcu_read_unlock();
   mutex_unlock(&tfile->napi_mutex);
   WARN_ON(1);
   return -ENOMEM;
  }

  local_bh_disable();
  napi_gro_frags(&tfile->napi);
  local_bh_enable();
  mutex_unlock(&tfile->napi_mutex);
 } else if (tfile->napi_enabled) {
  struct sk_buff_head *queue = &tfile->sk.sk_write_queue;
  int queue_len;

  spin_lock_bh(&queue->lock);
  __skb_queue_tail(queue, skb);
  queue_len = skb_queue_len(queue);
  spin_unlock(&queue->lock);

  if (!more || queue_len > NAPI_POLL_WEIGHT)
   napi_schedule(&tfile->napi);

  local_bh_enable();
 } else if (!IS_ENABLED(CONFIG_4KSTACKS)) {
  tun_rx_batched(tun, tfile, skb, more);
 } else {
  netif_rx_ni(skb);
 }
 rcu_read_unlock();

 stats = get_cpu_ptr(tun->pcpu_stats);
 u64_stats_update_begin(&stats->syncp);
 stats->rx_packets++;
 stats->rx_bytes += len;
 u64_stats_update_end(&stats->syncp);
 put_cpu_ptr(stats);

 if (rxhash)
  tun_flow_update(tun, rxhash, tfile);

 return total_len;
}
