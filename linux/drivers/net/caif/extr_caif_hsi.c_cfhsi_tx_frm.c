
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int len; int cb; } ;
struct cfhsi_desc {int* cffrm_len; int header; scalar_t__ offset; scalar_t__* emb_frm; } ;
struct TYPE_4__ {int tail_align; int head_align; } ;
struct cfhsi {int lock; TYPE_3__* ndev; TYPE_1__ cfg; } ;
struct caif_payload_info {int hdr_len; } ;
struct TYPE_5__ {int tx_bytes; int tx_packets; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 scalar_t__ CFHSI_DESC_SHORT_SZ ;
 int CFHSI_DESC_SZ ;
 int CFHSI_MAX_EMB_FRM_SZ ;
 int CFHSI_MAX_PKTS ;
 int CFHSI_PIGGY_DESC ;
 int PAD_POW2 (int,int ) ;
 scalar_t__ cfhsi_can_send_aggregate (struct cfhsi*) ;
 struct sk_buff* cfhsi_dequeue (struct cfhsi*) ;
 int cfhsi_update_aggregation_stats (struct cfhsi*,struct sk_buff*,int) ;
 int consume_skb (struct sk_buff*) ;
 int skb_copy_bits (struct sk_buff*,int ,scalar_t__*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int cfhsi_tx_frm(struct cfhsi_desc *desc, struct cfhsi *cfhsi)
{
 int nfrms = 0;
 int pld_len = 0;
 struct sk_buff *skb;
 u8 *pfrm = desc->emb_frm + CFHSI_MAX_EMB_FRM_SZ;

 skb = cfhsi_dequeue(cfhsi);
 if (!skb)
  return 0;


 desc->offset = 0;


 if (skb->len < CFHSI_MAX_EMB_FRM_SZ) {
  struct caif_payload_info *info;
  int hpad;
  int tpad;


  info = (struct caif_payload_info *)&skb->cb;

  hpad = 1 + PAD_POW2((info->hdr_len + 1), cfhsi->cfg.head_align);
  tpad = PAD_POW2((skb->len + hpad), cfhsi->cfg.tail_align);


  if ((skb->len + hpad + tpad) <= CFHSI_MAX_EMB_FRM_SZ) {
   u8 *pemb = desc->emb_frm;
   desc->offset = CFHSI_DESC_SHORT_SZ;
   *pemb = (u8)(hpad - 1);
   pemb += hpad;


   spin_lock_bh(&cfhsi->lock);
   cfhsi->ndev->stats.tx_packets++;
   cfhsi->ndev->stats.tx_bytes += skb->len;
   cfhsi_update_aggregation_stats(cfhsi, skb, -1);
   spin_unlock_bh(&cfhsi->lock);


   skb_copy_bits(skb, 0, pemb, skb->len);


   consume_skb(skb);
   skb = ((void*)0);
  }
 }


 while (nfrms < CFHSI_MAX_PKTS) {
  struct caif_payload_info *info;
  int hpad;
  int tpad;

  if (!skb)
   skb = cfhsi_dequeue(cfhsi);

  if (!skb)
   break;


  info = (struct caif_payload_info *)&skb->cb;

  hpad = 1 + PAD_POW2((info->hdr_len + 1), cfhsi->cfg.head_align);
  tpad = PAD_POW2((skb->len + hpad), cfhsi->cfg.tail_align);


  desc->cffrm_len[nfrms] = hpad + skb->len + tpad;


  *pfrm = (u8)(hpad - 1);
  pfrm += hpad;


  spin_lock_bh(&cfhsi->lock);
  cfhsi->ndev->stats.tx_packets++;
  cfhsi->ndev->stats.tx_bytes += skb->len;
  cfhsi_update_aggregation_stats(cfhsi, skb, -1);
  spin_unlock_bh(&cfhsi->lock);


  skb_copy_bits(skb, 0, pfrm, skb->len);


  pld_len += desc->cffrm_len[nfrms];


  pfrm += skb->len + tpad;


  consume_skb(skb);
  skb = ((void*)0);


  nfrms++;
 }


 while (nfrms < CFHSI_MAX_PKTS) {
  desc->cffrm_len[nfrms] = 0x0000;
  nfrms++;
 }


 if (cfhsi_can_send_aggregate(cfhsi))
  desc->header |= CFHSI_PIGGY_DESC;
 else
  desc->header &= ~CFHSI_PIGGY_DESC;

 return CFHSI_DESC_SZ + pld_len;
}
