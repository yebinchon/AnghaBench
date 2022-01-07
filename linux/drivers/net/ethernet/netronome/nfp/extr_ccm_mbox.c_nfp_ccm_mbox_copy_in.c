
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_4__ {int queue; } ;
struct TYPE_3__ {int mbox_off; } ;
struct nfp_net {TYPE_2__ mbox_cmsg; TYPE_1__ tlv_caps; } ;
typedef int __be32 ;


 int NFP_NET_CFG_MBOX_SIMPLE_VAL ;
 int NFP_NET_MBOX_TLV_TYPE_END ;
 int NFP_NET_MBOX_TLV_TYPE_MSG ;
 int NFP_NET_MBOX_TLV_TYPE_RESV ;
 struct sk_buff* __skb_peek (int *) ;
 int be32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int nfp_ccm_mbox_maxlen (struct sk_buff*) ;
 int nfp_ccm_mbox_write_tlv (struct nfp_net*,int,int ,int) ;
 int nn_writel (struct nfp_net*,int,int ) ;
 int round_up (int,int) ;
 struct sk_buff* skb_queue_next (int *,struct sk_buff*) ;

__attribute__((used)) static void nfp_ccm_mbox_copy_in(struct nfp_net *nn, struct sk_buff *last)
{
 struct sk_buff *skb;
 int reserve, i, cnt;
 __be32 *data;
 u32 off, len;

 off = nn->tlv_caps.mbox_off + NFP_NET_CFG_MBOX_SIMPLE_VAL;
 skb = __skb_peek(&nn->mbox_cmsg.queue);
 while (1) {
  nfp_ccm_mbox_write_tlv(nn, off, NFP_NET_MBOX_TLV_TYPE_MSG,
           skb->len);
  off += 4;


  data = (__be32 *)skb->data;
  cnt = skb->len / 4;
  for (i = 0 ; i < cnt; i++) {
   nn_writel(nn, off, be32_to_cpu(data[i]));
   off += 4;
  }
  if (skb->len & 3) {
   __be32 tmp = 0;

   memcpy(&tmp, &data[i], skb->len & 3);
   nn_writel(nn, off, be32_to_cpu(tmp));
   off += 4;
  }


  len = round_up(skb->len, 4);
  reserve = nfp_ccm_mbox_maxlen(skb) - len;
  if (reserve > 0) {
   nfp_ccm_mbox_write_tlv(nn, off,
            NFP_NET_MBOX_TLV_TYPE_RESV,
            reserve);
   off += 4 + reserve;
  }

  if (skb == last)
   break;
  skb = skb_queue_next(&nn->mbox_cmsg.queue, skb);
 }

 nfp_ccm_mbox_write_tlv(nn, off, NFP_NET_MBOX_TLV_TYPE_END, 0);
}
