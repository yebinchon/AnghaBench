
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usbnet {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ csum_offset; scalar_t__ data; scalar_t__ len; } ;
typedef int gfp_t ;
typedef int __wsum ;
typedef int __sum16 ;
struct TYPE_2__ {int nr_frags; } ;


 int BUG_ON (int ) ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int SMSC95XX_TX_OVERHEAD ;
 int SMSC95XX_TX_OVERHEAD_CSUM ;
 int TX_CMD_A_FIRST_SEG_ ;
 int TX_CMD_A_LAST_SEG_ ;
 int TX_CMD_B_CSUM_ENABLE ;
 int csum_fold (int ) ;
 int csum_partial (scalar_t__,scalar_t__,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int put_unaligned_le32 (int,void*) ;
 long skb_checksum_start_offset (struct sk_buff*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int) ;
 void* skb_push (struct sk_buff*,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int smsc95xx_calc_csum_preamble (struct sk_buff*) ;
 int smsc95xx_can_tx_checksum (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *smsc95xx_tx_fixup(struct usbnet *dev,
      struct sk_buff *skb, gfp_t flags)
{
 bool csum = skb->ip_summed == CHECKSUM_PARTIAL;
 int overhead = csum ? SMSC95XX_TX_OVERHEAD_CSUM : SMSC95XX_TX_OVERHEAD;
 u32 tx_cmd_a, tx_cmd_b;
 void *ptr;


 BUG_ON(skb_shinfo(skb)->nr_frags);


 if (skb_cow_head(skb, overhead)) {



  dev_kfree_skb_any(skb);
  return ((void*)0);
 }

 tx_cmd_b = (u32)skb->len;
 tx_cmd_a = tx_cmd_b | TX_CMD_A_FIRST_SEG_ | TX_CMD_A_LAST_SEG_;

 if (csum) {
  if (!smsc95xx_can_tx_checksum(skb)) {


   long csstart = skb_checksum_start_offset(skb);
   __wsum calc = csum_partial(skb->data + csstart,
    skb->len - csstart, 0);
   *((__sum16 *)(skb->data + csstart
    + skb->csum_offset)) = csum_fold(calc);

   csum = 0;
  } else {
   u32 csum_preamble = smsc95xx_calc_csum_preamble(skb);
   ptr = skb_push(skb, 4);
   put_unaligned_le32(csum_preamble, ptr);

   tx_cmd_a += 4;
   tx_cmd_b += 4;
   tx_cmd_b |= TX_CMD_B_CSUM_ENABLE;
  }
 }

 ptr = skb_push(skb, 8);
 put_unaligned_le32(tx_cmd_a, ptr);
 put_unaligned_le32(tx_cmd_b, ptr+4);

 return skb;
}
