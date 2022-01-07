
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int cb; } ;
struct TYPE_4__ {int (* flowctrl ) (int ,int) ;} ;
struct TYPE_5__ {scalar_t__ qlen; } ;
struct cfspi {scalar_t__ qd_low_mark; int ndev; TYPE_1__ cfdev; scalar_t__ flow_off_sent; TYPE_2__ qhead; int chead; } ;
struct caif_payload_info {scalar_t__ hdr_len; } ;


 scalar_t__ CAIF_MAX_SPI_FRAME ;
 int CAIF_MAX_SPI_PKTS ;
 int PAD_POW2 (scalar_t__,int) ;
 struct sk_buff* skb_dequeue (TYPE_2__*) ;
 struct sk_buff* skb_dequeue_tail (int *) ;
 scalar_t__ skb_peek (int *) ;
 int skb_queue_head (TYPE_2__*,struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spi_up_head_align ;
 int spi_up_tail_align ;
 int stub1 (int ,int) ;

int cfspi_xmitlen(struct cfspi *cfspi)
{
 struct sk_buff *skb = ((void*)0);
 int frm_len = 0;
 int pkts = 0;





 while (skb_peek(&cfspi->chead)) {
  skb = skb_dequeue_tail(&cfspi->chead);
  skb_queue_head(&cfspi->qhead, skb);
 }

 do {
  struct caif_payload_info *info = ((void*)0);
  int spad = 0;
  int epad = 0;

  skb = skb_dequeue(&cfspi->qhead);
  if (!skb)
   break;





  info = (struct caif_payload_info *)&skb->cb;





  if (spi_up_head_align > 1)
   spad = 1 + PAD_POW2((info->hdr_len + 1), spi_up_head_align);





  epad = PAD_POW2((skb->len + spad), spi_up_tail_align);

  if ((skb->len + spad + epad + frm_len) <= CAIF_MAX_SPI_FRAME) {
   skb_queue_tail(&cfspi->chead, skb);
   pkts++;
   frm_len += skb->len + spad + epad;
  } else {

   skb_queue_head(&cfspi->qhead, skb);
   break;
  }
 } while (pkts <= CAIF_MAX_SPI_PKTS);





 if (cfspi->flow_off_sent && cfspi->qhead.qlen < cfspi->qd_low_mark &&
  cfspi->cfdev.flowctrl) {
  cfspi->flow_off_sent = 0;
  cfspi->cfdev.flowctrl(cfspi->ndev, 1);
 }

 return frm_len;
}
