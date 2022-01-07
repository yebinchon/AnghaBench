
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int protocol; int dev; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;
struct TYPE_4__ {int bytes; int packets; int errors; } ;
struct TYPE_5__ {TYPE_1__ rx; } ;
struct aq_ring_s {size_t sw_head; size_t hw_head; TYPE_2__ stats; int idx; int aq_nic; struct aq_ring_buff_s* buff_ring; } ;
struct TYPE_6__ {scalar_t__ pg_off; int page; int daddr; } ;
struct aq_ring_buff_s {int is_cleaned; unsigned int next; int is_error; scalar_t__ len; scalar_t__ is_hash_l4; int rss_hash; int vlan_rx_tag; scalar_t__ is_vlan; int is_cso_err; int is_tcp_cso; int is_udp_cso; int is_ip_cso; TYPE_3__ rxdata; scalar_t__ is_eop; } ;


 int ALIGN (scalar_t__,int) ;
 scalar_t__ AQ_CFG_RX_FRAME_MAX ;
 scalar_t__ AQ_CFG_RX_HDR_SIZE ;
 scalar_t__ AQ_SKB_ALIGN ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int ETH_P_8021Q ;
 int PKT_HASH_TYPE_L4 ;
 int PKT_HASH_TYPE_NONE ;
 int __skb_put (struct sk_buff*,scalar_t__) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int aq_buf_vaddr (TYPE_3__*) ;
 int aq_nic_get_dev (int ) ;
 struct net_device* aq_nic_get_ndev (int ) ;
 int aq_ring_dx_in_range (size_t,unsigned int,size_t) ;
 size_t aq_ring_next_dx (struct aq_ring_s*,size_t) ;
 int aq_rx_checksum (struct aq_ring_s*,struct aq_ring_buff_s*,struct sk_buff*) ;
 struct sk_buff* build_skb (int ,scalar_t__) ;
 int dma_sync_single_range_for_cpu (int ,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ eth_get_headlen (int ,int ,scalar_t__) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int ) ;
 int memcpy (int ,int ,int ) ;
 struct sk_buff* napi_alloc_skb (struct napi_struct*,scalar_t__) ;
 int napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int page_ref_inc (int ) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;
 scalar_t__ unlikely (int) ;

int aq_ring_rx_clean(struct aq_ring_s *self,
       struct napi_struct *napi,
       int *work_done,
       int budget)
{
 struct net_device *ndev = aq_nic_get_ndev(self->aq_nic);
 bool is_rsc_completed = 1;
 int err = 0;

 for (; (self->sw_head != self->hw_head) && budget;
  self->sw_head = aq_ring_next_dx(self, self->sw_head),
  --budget, ++(*work_done)) {
  struct aq_ring_buff_s *buff = &self->buff_ring[self->sw_head];
  struct aq_ring_buff_s *buff_ = ((void*)0);
  struct sk_buff *skb = ((void*)0);
  unsigned int next_ = 0U;
  unsigned int i = 0U;
  u16 hdr_len;

  if (buff->is_cleaned)
   continue;

  if (!buff->is_eop) {
   buff_ = buff;
   do {
    next_ = buff_->next,
    buff_ = &self->buff_ring[next_];
    is_rsc_completed =
     aq_ring_dx_in_range(self->sw_head,
           next_,
           self->hw_head);

    if (unlikely(!is_rsc_completed))
     break;

    buff->is_error |= buff_->is_error;
    buff->is_cso_err |= buff_->is_cso_err;

   } while (!buff_->is_eop);

   if (!is_rsc_completed) {
    err = 0;
    goto err_exit;
   }
   if (buff->is_error || buff->is_cso_err) {
    buff_ = buff;
    do {
     next_ = buff_->next,
     buff_ = &self->buff_ring[next_];

     buff_->is_cleaned = 1;
    } while (!buff_->is_eop);

    ++self->stats.rx.errors;
    continue;
   }
  }

  if (buff->is_error) {
   ++self->stats.rx.errors;
   continue;
  }

  dma_sync_single_range_for_cpu(aq_nic_get_dev(self->aq_nic),
           buff->rxdata.daddr,
           buff->rxdata.pg_off,
           buff->len, DMA_FROM_DEVICE);


  if (buff->is_eop &&
      buff->len <= AQ_CFG_RX_FRAME_MAX - AQ_SKB_ALIGN) {
   skb = build_skb(aq_buf_vaddr(&buff->rxdata),
     AQ_CFG_RX_FRAME_MAX);
   if (unlikely(!skb)) {
    err = -ENOMEM;
    goto err_exit;
   }
   skb_put(skb, buff->len);
   page_ref_inc(buff->rxdata.page);
  } else {
   skb = napi_alloc_skb(napi, AQ_CFG_RX_HDR_SIZE);
   if (unlikely(!skb)) {
    err = -ENOMEM;
    goto err_exit;
   }

   hdr_len = buff->len;
   if (hdr_len > AQ_CFG_RX_HDR_SIZE)
    hdr_len = eth_get_headlen(skb->dev,
         aq_buf_vaddr(&buff->rxdata),
         AQ_CFG_RX_HDR_SIZE);

   memcpy(__skb_put(skb, hdr_len), aq_buf_vaddr(&buff->rxdata),
          ALIGN(hdr_len, sizeof(long)));

   if (buff->len - hdr_len > 0) {
    skb_add_rx_frag(skb, 0, buff->rxdata.page,
      buff->rxdata.pg_off + hdr_len,
      buff->len - hdr_len,
      AQ_CFG_RX_FRAME_MAX);
    page_ref_inc(buff->rxdata.page);
   }

   if (!buff->is_eop) {
    buff_ = buff;
    i = 1U;
    do {
     next_ = buff_->next,
     buff_ = &self->buff_ring[next_];

     dma_sync_single_range_for_cpu(
       aq_nic_get_dev(self->aq_nic),
       buff_->rxdata.daddr,
       buff_->rxdata.pg_off,
       buff_->len,
       DMA_FROM_DEVICE);
     skb_add_rx_frag(skb, i++,
       buff_->rxdata.page,
       buff_->rxdata.pg_off,
       buff_->len,
       AQ_CFG_RX_FRAME_MAX);
     page_ref_inc(buff_->rxdata.page);
     buff_->is_cleaned = 1;

     buff->is_ip_cso &= buff_->is_ip_cso;
     buff->is_udp_cso &= buff_->is_udp_cso;
     buff->is_tcp_cso &= buff_->is_tcp_cso;
     buff->is_cso_err |= buff_->is_cso_err;

    } while (!buff_->is_eop);
   }
  }

  if (buff->is_vlan)
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
            buff->vlan_rx_tag);

  skb->protocol = eth_type_trans(skb, ndev);

  aq_rx_checksum(self, buff, skb);

  skb_set_hash(skb, buff->rss_hash,
        buff->is_hash_l4 ? PKT_HASH_TYPE_L4 :
        PKT_HASH_TYPE_NONE);

  skb_record_rx_queue(skb, self->idx);

  ++self->stats.rx.packets;
  self->stats.rx.bytes += skb->len;

  napi_gro_receive(napi, skb);
 }

err_exit:
 return err;
}
