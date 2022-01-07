
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ ip_summed; } ;
struct lan78xx_net {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int gso_size; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int TX_CMD_A_FCS_ ;
 int TX_CMD_A_IPE_ ;
 int TX_CMD_A_IVTG_ ;
 int TX_CMD_A_LEN_MASK_ ;
 int TX_CMD_A_LSO_ ;
 int TX_CMD_A_TPE_ ;
 int TX_CMD_B_MSS_MASK_ ;
 int TX_CMD_B_MSS_MIN_ ;
 int TX_CMD_B_MSS_SHIFT_ ;
 int TX_CMD_B_VTAG_MASK_ ;
 int TX_OVERHEAD ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ lan78xx_linearize (struct sk_buff*) ;
 int max (int ,int ) ;
 int put_unaligned_le32 (int,void*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 void* skb_push (struct sk_buff*,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *lan78xx_tx_prep(struct lan78xx_net *dev,
           struct sk_buff *skb, gfp_t flags)
{
 u32 tx_cmd_a, tx_cmd_b;
 void *ptr;

 if (skb_cow_head(skb, TX_OVERHEAD)) {
  dev_kfree_skb_any(skb);
  return ((void*)0);
 }

 if (lan78xx_linearize(skb) < 0)
  return ((void*)0);

 tx_cmd_a = (u32)(skb->len & TX_CMD_A_LEN_MASK_) | TX_CMD_A_FCS_;

 if (skb->ip_summed == CHECKSUM_PARTIAL)
  tx_cmd_a |= TX_CMD_A_IPE_ | TX_CMD_A_TPE_;

 tx_cmd_b = 0;
 if (skb_is_gso(skb)) {
  u16 mss = max(skb_shinfo(skb)->gso_size, TX_CMD_B_MSS_MIN_);

  tx_cmd_b = (mss << TX_CMD_B_MSS_SHIFT_) & TX_CMD_B_MSS_MASK_;

  tx_cmd_a |= TX_CMD_A_LSO_;
 }

 if (skb_vlan_tag_present(skb)) {
  tx_cmd_a |= TX_CMD_A_IVTG_;
  tx_cmd_b |= skb_vlan_tag_get(skb) & TX_CMD_B_VTAG_MASK_;
 }

 ptr = skb_push(skb, 8);
 put_unaligned_le32(tx_cmd_a, ptr);
 put_unaligned_le32(tx_cmd_b, ptr + 4);

 return skb;
}
