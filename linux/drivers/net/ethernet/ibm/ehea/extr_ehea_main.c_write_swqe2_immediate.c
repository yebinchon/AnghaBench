
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ehea_vsgentry {int len; int vaddr; int l_key; } ;
struct TYPE_4__ {struct ehea_vsgentry sg_entry; int * immediate_data; } ;
struct TYPE_5__ {TYPE_1__ immdata_desc; } ;
struct ehea_swqe {unsigned int immediate_data_length; scalar_t__ descriptors; int mss; int tx_control; TYPE_2__ u; } ;
struct TYPE_6__ {int gso_size; } ;


 int EHEA_SWQE_TSO ;
 unsigned int ETH_HLEN ;
 int SWQE2_MAX_IMM ;
 int ehea_map_vaddr (scalar_t__) ;
 unsigned int ip_hdrlen (struct sk_buff*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int *,int) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 unsigned int tcp_hdrlen (struct sk_buff*) ;

__attribute__((used)) static void write_swqe2_immediate(struct sk_buff *skb, struct ehea_swqe *swqe,
      u32 lkey)
{
 int skb_data_size = skb_headlen(skb);
 u8 *imm_data = &swqe->u.immdata_desc.immediate_data[0];
 struct ehea_vsgentry *sg1entry = &swqe->u.immdata_desc.sg_entry;
 unsigned int immediate_len = SWQE2_MAX_IMM;

 swqe->descriptors = 0;

 if (skb_is_gso(skb)) {
  swqe->tx_control |= EHEA_SWQE_TSO;
  swqe->mss = skb_shinfo(skb)->gso_size;




  immediate_len = ETH_HLEN + ip_hdrlen(skb) + tcp_hdrlen(skb);
 }

 if (skb_is_gso(skb) || skb_data_size >= SWQE2_MAX_IMM) {
  skb_copy_from_linear_data(skb, imm_data, immediate_len);
  swqe->immediate_data_length = immediate_len;

  if (skb_data_size > immediate_len) {
   sg1entry->l_key = lkey;
   sg1entry->len = skb_data_size - immediate_len;
   sg1entry->vaddr =
    ehea_map_vaddr(skb->data + immediate_len);
   swqe->descriptors++;
  }
 } else {
  skb_copy_from_linear_data(skb, imm_data, skb_data_size);
  swqe->immediate_data_length = skb_data_size;
 }
}
