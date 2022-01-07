
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; scalar_t__ mac_len; } ;
struct ixgbe_tx_buffer {int bytecount; int tx_flags; int gso_segs; struct sk_buff* skb; } ;
struct ixgbe_ring {int dev; } ;
struct fcoe_hdr {int fcoe_sof; } ;
struct fcoe_crc_eof {int dummy; } ;
struct fc_frame_header {int* fh_f_ctl; } ;
struct TYPE_2__ {scalar_t__ gso_type; int gso_size; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;




 int FC_FC_REL_OFF ;




 int IXGBE_ADVTXD_FCOEF_EOF_A ;
 int IXGBE_ADVTXD_FCOEF_EOF_N ;
 int IXGBE_ADVTXD_FCOEF_EOF_NI ;
 int IXGBE_ADVTXD_FCOEF_EOF_T ;
 int IXGBE_ADVTXD_FCOEF_ORIE ;
 int IXGBE_ADVTXD_FCOEF_ORIS ;
 int IXGBE_ADVTXD_FCOEF_PARINC ;
 int IXGBE_ADVTXD_FCOEF_SOF ;
 int IXGBE_ADVTXD_MACLEN_SHIFT ;
 int IXGBE_ADVTXD_MSS_SHIFT ;
 int IXGBE_ADVTXD_TUCMD_L4T_RSV ;
 int IXGBE_ADVTXT_TUCMD_FCOE ;
 int IXGBE_TX_FLAGS_CC ;
 int IXGBE_TX_FLAGS_FCOE ;
 int IXGBE_TX_FLAGS_TSO ;
 int IXGBE_TX_FLAGS_VLAN_MASK ;
 scalar_t__ SKB_GSO_FCOE ;
 int dev_err (int ,char*,scalar_t__) ;
 int dev_warn (int ,char*,int) ;
 int ixgbe_tx_ctxtdesc (struct ixgbe_ring*,int,int,int,int) ;
 int skb_copy_bits (struct sk_buff*,int,int*,int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 int skb_set_transport_header (struct sk_buff*,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;

int ixgbe_fso(struct ixgbe_ring *tx_ring,
       struct ixgbe_tx_buffer *first,
       u8 *hdr_len)
{
 struct sk_buff *skb = first->skb;
 struct fc_frame_header *fh;
 u32 vlan_macip_lens;
 u32 fcoe_sof_eof = 0;
 u32 mss_l4len_idx;
 u32 type_tucmd = IXGBE_ADVTXT_TUCMD_FCOE;
 u8 sof, eof;

 if (skb_is_gso(skb) && (skb_shinfo(skb)->gso_type != SKB_GSO_FCOE)) {
  dev_err(tx_ring->dev, "Wrong gso type %d:expecting SKB_GSO_FCOE\n",
   skb_shinfo(skb)->gso_type);
  return -EINVAL;
 }


 skb_set_network_header(skb, skb->mac_len);
 skb_set_transport_header(skb, skb->mac_len +
     sizeof(struct fcoe_hdr));


 sof = ((struct fcoe_hdr *)skb_network_header(skb))->fcoe_sof;
 switch (sof) {
 case 131:
  fcoe_sof_eof = IXGBE_ADVTXD_FCOEF_ORIS;
  break;
 case 130:
  fcoe_sof_eof = IXGBE_ADVTXD_FCOEF_SOF |
          IXGBE_ADVTXD_FCOEF_ORIS;
  break;
 case 129:
  break;
 case 128:
  fcoe_sof_eof = IXGBE_ADVTXD_FCOEF_SOF;
  break;
 default:
  dev_warn(tx_ring->dev, "unknown sof = 0x%x\n", sof);
  return -EINVAL;
 }


 skb_copy_bits(skb, skb->len - 4, &eof, 1);

 switch (eof) {
 case 134:
  fcoe_sof_eof |= IXGBE_ADVTXD_FCOEF_EOF_N;
  break;
 case 132:

  if (skb_is_gso(skb))
   fcoe_sof_eof |= IXGBE_ADVTXD_FCOEF_EOF_N |
     IXGBE_ADVTXD_FCOEF_ORIE;
  else
   fcoe_sof_eof |= IXGBE_ADVTXD_FCOEF_EOF_T;
  break;
 case 133:
  fcoe_sof_eof |= IXGBE_ADVTXD_FCOEF_EOF_NI;
  break;
 case 135:
  fcoe_sof_eof |= IXGBE_ADVTXD_FCOEF_EOF_A;
  break;
 default:
  dev_warn(tx_ring->dev, "unknown eof = 0x%x\n", eof);
  return -EINVAL;
 }


 fh = (struct fc_frame_header *)skb_transport_header(skb);
 if (fh->fh_f_ctl[2] & FC_FC_REL_OFF)
  fcoe_sof_eof |= IXGBE_ADVTXD_FCOEF_PARINC;


 *hdr_len = sizeof(struct fcoe_crc_eof);


 if (skb_is_gso(skb)) {
  *hdr_len += skb_transport_offset(skb) +
       sizeof(struct fc_frame_header);

  first->gso_segs = DIV_ROUND_UP(skb->len - *hdr_len,
            skb_shinfo(skb)->gso_size);
  first->bytecount += (first->gso_segs - 1) * *hdr_len;
  first->tx_flags |= IXGBE_TX_FLAGS_TSO;

  type_tucmd |= IXGBE_ADVTXD_TUCMD_L4T_RSV;
 }


 first->tx_flags |= IXGBE_TX_FLAGS_FCOE | IXGBE_TX_FLAGS_CC;


 mss_l4len_idx = skb_shinfo(skb)->gso_size << IXGBE_ADVTXD_MSS_SHIFT;


 vlan_macip_lens = skb_transport_offset(skb) +
     sizeof(struct fc_frame_header);
 vlan_macip_lens |= (skb_transport_offset(skb) - 4)
      << IXGBE_ADVTXD_MACLEN_SHIFT;
 vlan_macip_lens |= first->tx_flags & IXGBE_TX_FLAGS_VLAN_MASK;


 ixgbe_tx_ctxtdesc(tx_ring, vlan_macip_lens, fcoe_sof_eof,
     type_tucmd, mss_l4len_idx);

 return 0;
}
