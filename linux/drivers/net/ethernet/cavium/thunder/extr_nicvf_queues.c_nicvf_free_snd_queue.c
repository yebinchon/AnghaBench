
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sq_hdr_subdesc {size_t rsvd2; int subdesc_cnt; scalar_t__ dont_send; } ;
struct TYPE_4__ {int q_len; int base; } ;
struct snd_queue {size_t head; size_t tail; TYPE_2__ dmem; scalar_t__* xdp_page; scalar_t__* skbuff; int * tso_hdrs; int tso_hdrs_phys; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct nicvf {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ GET_SQ_DESC (struct snd_queue*,size_t) ;
 int TSO_HEADER_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int kfree (scalar_t__*) ;
 int nicvf_free_q_desc_mem (struct nicvf*,TYPE_2__*) ;
 int nicvf_unmap_sndq_buffers (struct nicvf*,struct snd_queue*,size_t,int ) ;
 int put_page (struct page*) ;
 int smp_rmb () ;

__attribute__((used)) static void nicvf_free_snd_queue(struct nicvf *nic, struct snd_queue *sq)
{
 struct sk_buff *skb;
 struct page *page;
 struct sq_hdr_subdesc *hdr;
 struct sq_hdr_subdesc *tso_sqe;

 if (!sq)
  return;
 if (!sq->dmem.base)
  return;

 if (sq->tso_hdrs) {
  dma_free_coherent(&nic->pdev->dev,
      sq->dmem.q_len * TSO_HEADER_SIZE,
      sq->tso_hdrs, sq->tso_hdrs_phys);
  sq->tso_hdrs = ((void*)0);
 }


 smp_rmb();
 while (sq->head != sq->tail) {
  skb = (struct sk_buff *)sq->skbuff[sq->head];
  if (!skb || !sq->xdp_page)
   goto next;

  page = (struct page *)sq->xdp_page[sq->head];
  if (!page)
   goto next;
  else
   put_page(page);

  hdr = (struct sq_hdr_subdesc *)GET_SQ_DESC(sq, sq->head);

  if (hdr->dont_send) {

   tso_sqe =
    (struct sq_hdr_subdesc *)GET_SQ_DESC(sq, hdr->rsvd2);
   nicvf_unmap_sndq_buffers(nic, sq, hdr->rsvd2,
       tso_sqe->subdesc_cnt);
  } else {
   nicvf_unmap_sndq_buffers(nic, sq, sq->head,
       hdr->subdesc_cnt);
  }
  if (skb)
   dev_kfree_skb_any(skb);
next:
  sq->head++;
  sq->head &= (sq->dmem.q_len - 1);
 }
 kfree(sq->skbuff);
 kfree(sq->xdp_page);
 nicvf_free_q_desc_mem(nic, &sq->dmem);
}
