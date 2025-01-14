
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct usbnet {int hard_mtu; struct aqc111_data* driver_priv; } ;
struct sk_buff {scalar_t__ len; int truesize; scalar_t__ data; } ;
struct aqc111_data {scalar_t__ rx_checksum; } ;
typedef int desc_hdr ;


 int AQ_RX_DH_DESC_OFFSET_MASK ;
 int AQ_RX_DH_DESC_OFFSET_SHIFT ;
 int AQ_RX_DH_PKT_CNT_MASK ;
 int AQ_RX_HW_PAD ;
 int AQ_RX_PD_DROP ;
 int AQ_RX_PD_LEN_MASK ;
 int AQ_RX_PD_LEN_SHIFT ;
 int AQ_RX_PD_RX_OK ;
 int AQ_RX_PD_VLAN ;
 int AQ_RX_PD_VLAN_SHIFT ;
 int ETH_P_8021Q ;
 int GFP_ATOMIC ;
 int SKB_TRUESIZE (int) ;
 int VLAN_VID_MASK ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int aqc111_rx_checksum (struct sk_buff*,int) ;
 int htons (int ) ;
 int le64_to_cpup (int*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int) ;
 int usbnet_skb_return (struct usbnet*,struct sk_buff*) ;

__attribute__((used)) static int aqc111_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 struct aqc111_data *aqc111_data = dev->driver_priv;
 struct sk_buff *new_skb = ((void*)0);
 u32 pkt_total_offset = 0;
 u64 *pkt_desc_ptr = ((void*)0);
 u32 start_of_descs = 0;
 u32 desc_offset = 0;
 u16 pkt_count = 0;
 u64 desc_hdr = 0;
 u16 vlan_tag = 0;
 u32 skb_len = 0;

 if (!skb)
  goto err;

 if (skb->len == 0)
  goto err;

 skb_len = skb->len;

 skb_trim(skb, skb->len - sizeof(desc_hdr));
 desc_hdr = le64_to_cpup((u64 *)skb_tail_pointer(skb));


 desc_offset = (desc_hdr & AQ_RX_DH_DESC_OFFSET_MASK) >>
        AQ_RX_DH_DESC_OFFSET_SHIFT;
 pkt_count = desc_hdr & AQ_RX_DH_PKT_CNT_MASK;
 start_of_descs = skb_len - ((pkt_count + 1) * sizeof(desc_hdr));


 if (start_of_descs != desc_offset)
  goto err;


 if (desc_offset >= skb_len)
  goto err;

 if (pkt_count == 0)
  goto err;


 pkt_desc_ptr = (u64 *)(skb->data + desc_offset);

 while (pkt_count--) {
  u64 pkt_desc = le64_to_cpup(pkt_desc_ptr);
  u32 pkt_len_with_padd = 0;
  u32 pkt_len = 0;

  pkt_len = (u32)((pkt_desc & AQ_RX_PD_LEN_MASK) >>
     AQ_RX_PD_LEN_SHIFT);
  pkt_len_with_padd = ((pkt_len + 7) & 0x7FFF8);

  pkt_total_offset += pkt_len_with_padd;
  if (pkt_total_offset > desc_offset ||
      (pkt_count == 0 && pkt_total_offset != desc_offset)) {
   goto err;
  }

  if (pkt_desc & AQ_RX_PD_DROP ||
      !(pkt_desc & AQ_RX_PD_RX_OK) ||
      pkt_len > (dev->hard_mtu + AQ_RX_HW_PAD)) {
   skb_pull(skb, pkt_len_with_padd);

   pkt_desc_ptr++;
   continue;
  }


  new_skb = skb_clone(skb, GFP_ATOMIC);

  if (!new_skb)
   goto err;

  new_skb->len = pkt_len;
  skb_pull(new_skb, AQ_RX_HW_PAD);
  skb_set_tail_pointer(new_skb, new_skb->len);

  new_skb->truesize = SKB_TRUESIZE(new_skb->len);
  if (aqc111_data->rx_checksum)
   aqc111_rx_checksum(new_skb, pkt_desc);

  if (pkt_desc & AQ_RX_PD_VLAN) {
   vlan_tag = pkt_desc >> AQ_RX_PD_VLAN_SHIFT;
   __vlan_hwaccel_put_tag(new_skb, htons(ETH_P_8021Q),
            vlan_tag & VLAN_VID_MASK);
  }

  usbnet_skb_return(dev, new_skb);
  if (pkt_count == 0)
   break;

  skb_pull(skb, pkt_len_with_padd);


  pkt_desc_ptr++;

  new_skb = ((void*)0);
 }

 return 1;

err:
 return 0;
}
