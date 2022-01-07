
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct snd_queue {int free_cnt; } ;
struct sk_buff {int len; int data; } ;
struct nicvf {int netdev; struct nicvf* pnicvf; scalar_t__ t88; TYPE_1__* pdev; int hw_tso; } ;
typedef int skb_frag_t ;
struct TYPE_4__ {int nr_frags; scalar_t__ gso_size; int * frags; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_TO_DEVICE ;
 int atomic_read (int *) ;
 int dma_map_page_attrs (int *,int ,int ,int,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int netdev_dbg (int ,char*) ;
 int nicvf_get_nxt_sqentry (struct snd_queue*,int) ;
 int nicvf_get_sq_desc (struct snd_queue*,int) ;
 int nicvf_rollback_sq_desc (struct snd_queue*,int,int) ;
 int nicvf_sq_add_cqe_subdesc (struct snd_queue*,int,int,struct sk_buff*) ;
 int nicvf_sq_add_gather_subdesc (struct snd_queue*,int,int,int ) ;
 int nicvf_sq_add_hdr_subdesc (struct nicvf*,struct snd_queue*,int,int,struct sk_buff*,int) ;
 int nicvf_sq_append_tso (struct nicvf*,struct snd_queue*,int ,int,struct sk_buff*) ;
 int nicvf_sq_doorbell (struct nicvf*,struct sk_buff*,int ,int) ;
 int nicvf_sq_subdesc_required (struct nicvf*,struct sk_buff*) ;
 int nicvf_unmap_sndq_buffers (struct nicvf*,struct snd_queue*,int,int) ;
 int offset_in_page (int ) ;
 int skb_frag_off (int const*) ;
 int skb_frag_page (int const*) ;
 int skb_frag_size (int const*) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int virt_to_page (int ) ;

int nicvf_sq_append_skb(struct nicvf *nic, struct snd_queue *sq,
   struct sk_buff *skb, u8 sq_num)
{
 int i, size;
 int subdesc_cnt, hdr_sqe = 0;
 int qentry;
 u64 dma_addr;

 subdesc_cnt = nicvf_sq_subdesc_required(nic, skb);
 if (subdesc_cnt > atomic_read(&sq->free_cnt))
  goto append_fail;

 qentry = nicvf_get_sq_desc(sq, subdesc_cnt);


 if (skb_shinfo(skb)->gso_size && !nic->hw_tso)
  return nicvf_sq_append_tso(nic, sq, sq_num, qentry, skb);


 nicvf_sq_add_hdr_subdesc(nic, sq, qentry, subdesc_cnt - 1,
     skb, skb->len);
 hdr_sqe = qentry;


 qentry = nicvf_get_nxt_sqentry(sq, qentry);
 size = skb_is_nonlinear(skb) ? skb_headlen(skb) : skb->len;

 dma_addr = dma_map_page_attrs(&nic->pdev->dev, virt_to_page(skb->data),
          offset_in_page(skb->data), size,
          DMA_TO_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
 if (dma_mapping_error(&nic->pdev->dev, dma_addr)) {
  nicvf_rollback_sq_desc(sq, qentry, subdesc_cnt);
  return 0;
 }

 nicvf_sq_add_gather_subdesc(sq, qentry, size, dma_addr);


 if (!skb_is_nonlinear(skb))
  goto doorbell;

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  qentry = nicvf_get_nxt_sqentry(sq, qentry);
  size = skb_frag_size(frag);
  dma_addr = dma_map_page_attrs(&nic->pdev->dev,
           skb_frag_page(frag),
           skb_frag_off(frag), size,
           DMA_TO_DEVICE,
           DMA_ATTR_SKIP_CPU_SYNC);
  if (dma_mapping_error(&nic->pdev->dev, dma_addr)) {



   nicvf_unmap_sndq_buffers(nic, sq, hdr_sqe, i);
   nicvf_rollback_sq_desc(sq, qentry, subdesc_cnt);
   return 0;
  }
  nicvf_sq_add_gather_subdesc(sq, qentry, size, dma_addr);
 }

doorbell:
 if (nic->t88 && skb_shinfo(skb)->gso_size) {
  qentry = nicvf_get_nxt_sqentry(sq, qentry);
  nicvf_sq_add_cqe_subdesc(sq, qentry, hdr_sqe, skb);
 }

 nicvf_sq_doorbell(nic, skb, sq_num, subdesc_cnt);

 return 1;

append_fail:

 nic = nic->pnicvf;
 netdev_dbg(nic->netdev, "Not enough SQ descriptors to xmit pkt\n");
 return 0;
}
