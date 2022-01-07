
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l3_offset; int seg_addr; void* seg_len; void* mss; int type_flags; } ;
union gve_tx_desc {TYPE_1__ seg; } ;
typedef int u64 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int gso_size; } ;


 int GVE_TXD_SEG ;
 int GVE_TXSF_IPV6 ;
 void* cpu_to_be16 (int ) ;
 int cpu_to_be64 (int ) ;
 scalar_t__ skb_is_gso_v6 (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void gve_tx_fill_seg_desc(union gve_tx_desc *seg_desc,
     struct sk_buff *skb, bool is_gso,
     u16 len, u64 addr)
{
 seg_desc->seg.type_flags = GVE_TXD_SEG;
 if (is_gso) {
  if (skb_is_gso_v6(skb))
   seg_desc->seg.type_flags |= GVE_TXSF_IPV6;
  seg_desc->seg.l3_offset = skb_network_offset(skb) >> 1;
  seg_desc->seg.mss = cpu_to_be16(skb_shinfo(skb)->gso_size);
 }
 seg_desc->seg.seg_len = cpu_to_be16(len);
 seg_desc->seg.seg_addr = cpu_to_be64(addr);
}
