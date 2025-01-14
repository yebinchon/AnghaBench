
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ protocol; } ;
struct hnae_ring {size_t next_to_use; struct hnae_desc_cb* desc_cb; struct hnae_desc* desc; } ;
struct hnae_desc_cb {int length; int type; int dma; void* priv; } ;
struct TYPE_2__ {int flag_ipoffset; void* asid_bufnum_pid; void* send_size; } ;
struct hnae_desc {TYPE_1__ tx; int addr; } ;
typedef enum hns_desc_type { ____Placeholder_hns_desc_type } hns_desc_type ;
typedef int dma_addr_t ;
typedef scalar_t__ __be16 ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int DESC_TYPE_SKB ;
 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int HNS_TXD_BUFNUM_S ;
 int HNS_TXD_FE_B ;
 int HNS_TXD_IPOFFSET_S ;
 int HNS_TXD_L3CS_B ;
 int HNS_TXD_L4CS_B ;
 int HNS_TXD_VLD_B ;
 scalar_t__ VLAN_HLEN ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 scalar_t__ htons (int ) ;
 int next_to_use ;
 int ring_ptr_move_fw (struct hnae_ring*,int ) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;

__attribute__((used)) static void fill_desc(struct hnae_ring *ring, void *priv,
        int size, dma_addr_t dma, int frag_end,
        int buf_num, enum hns_desc_type type, int mtu)
{
 struct hnae_desc *desc = &ring->desc[ring->next_to_use];
 struct hnae_desc_cb *desc_cb = &ring->desc_cb[ring->next_to_use];
 struct sk_buff *skb;
 __be16 protocol;
 u32 ip_offset;
 u32 asid_bufnum_pid = 0;
 u32 flag_ipoffset = 0;

 desc_cb->priv = priv;
 desc_cb->length = size;
 desc_cb->dma = dma;
 desc_cb->type = type;

 desc->addr = cpu_to_le64(dma);
 desc->tx.send_size = cpu_to_le16((u16)size);


 flag_ipoffset |= 1 << HNS_TXD_VLD_B;

 asid_bufnum_pid |= buf_num << HNS_TXD_BUFNUM_S;

 if (type == DESC_TYPE_SKB) {
  skb = (struct sk_buff *)priv;

  if (skb->ip_summed == CHECKSUM_PARTIAL) {
   protocol = skb->protocol;
   ip_offset = ETH_HLEN;


   if (protocol == htons(ETH_P_8021Q)) {
    ip_offset += VLAN_HLEN;
    protocol = vlan_get_protocol(skb);
    skb->protocol = protocol;
   }

   if (skb->protocol == htons(ETH_P_IP)) {
    flag_ipoffset |= 1 << HNS_TXD_L3CS_B;

    flag_ipoffset |= 1 << HNS_TXD_L4CS_B;

   } else if (skb->protocol == htons(ETH_P_IPV6)) {

    flag_ipoffset |= 1 << HNS_TXD_L4CS_B;
   }

   flag_ipoffset |= ip_offset << HNS_TXD_IPOFFSET_S;
  }
 }

 flag_ipoffset |= frag_end << HNS_TXD_FE_B;

 desc->tx.asid_bufnum_pid = cpu_to_le16(asid_bufnum_pid);
 desc->tx.flag_ipoffset = cpu_to_le32(flag_ipoffset);

 ring_ptr_move_fw(ring, next_to_use);
}
