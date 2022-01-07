
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ ip_summed; int len; int data; } ;
struct qed_ll2_tx_pkt_info {int num_of_bds; int bd_flags; int remove_stag; struct sk_buff* cookie; int first_frag_len; int first_frag; int tx_dest; int vlan; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {unsigned long mf_bits; TYPE_2__* pdev; TYPE_1__* ll2; } ;
typedef int skb_frag_t ;
typedef int pkt ;
typedef int dma_addr_t ;
struct TYPE_8__ {scalar_t__ nexthdr; } ;
struct TYPE_7__ {int nr_frags; int * frags; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int handle; } ;


 int BIT (int ) ;
 scalar_t__ CHECKSUM_NONE ;
 int CORE_LL2_TX_MAX_BDS_PER_PACKET ;
 int CORE_TX_BD_DATA_IP_CSUM_SHIFT ;
 int CORE_TX_BD_DATA_VLAN_INSERTION_SHIFT ;
 int DMA_TO_DEVICE ;
 int DP_ERR (struct qed_dev*,char*,int) ;
 int DP_INFO (struct qed_dev*,char*) ;
 int DP_NOTICE (struct qed_dev*,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_P_IPV6 ;
 scalar_t__ NEXTHDR_IPV6 ;
 struct qed_hwfn* QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_LL2_TX_DEST_NW ;
 int QED_LL2_XMIT_FLAGS_FIP_DISCOVERY ;
 int QED_MF_UFP_SPECIFIC ;
 int dma_map_single (int *,int ,int ,int ) ;
 int dma_mapping_error (int *,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 scalar_t__ htons (int ) ;
 TYPE_4__* ipv6_hdr (struct sk_buff*) ;
 int memset (struct qed_ll2_tx_pkt_info*,int ,int) ;
 int qed_ll2_prepare_tx_packet (struct qed_hwfn*,int ,struct qed_ll2_tx_pkt_info*,int) ;
 int qed_ll2_set_fragment_of_tx_packet (struct qed_hwfn*,int ,int ,int ) ;
 int skb_frag_dma_map (int *,int const*,int ,int ,int ) ;
 int skb_frag_size (int const*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;

__attribute__((used)) static int qed_ll2_start_xmit(struct qed_dev *cdev, struct sk_buff *skb,
         unsigned long xmit_flags)
{
 struct qed_hwfn *p_hwfn = QED_AFFIN_HWFN(cdev);
 struct qed_ll2_tx_pkt_info pkt;
 const skb_frag_t *frag;
 u8 flags = 0, nr_frags;
 int rc = -EINVAL, i;
 dma_addr_t mapping;
 u16 vlan = 0;

 if (unlikely(skb->ip_summed != CHECKSUM_NONE)) {
  DP_INFO(cdev, "Cannot transmit a checksummed packet\n");
  return -EINVAL;
 }




 nr_frags = skb_shinfo(skb)->nr_frags;

 if (1 + nr_frags > CORE_LL2_TX_MAX_BDS_PER_PACKET) {
  DP_ERR(cdev, "Cannot transmit a packet with %d fragments\n",
         1 + nr_frags);
  return -EINVAL;
 }

 mapping = dma_map_single(&cdev->pdev->dev, skb->data,
     skb->len, DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(&cdev->pdev->dev, mapping))) {
  DP_NOTICE(cdev, "SKB mapping failed\n");
  return -EINVAL;
 }


 if (!((vlan_get_protocol(skb) == htons(ETH_P_IPV6)) &&
       ipv6_hdr(skb)->nexthdr == NEXTHDR_IPV6))
  flags |= BIT(CORE_TX_BD_DATA_IP_CSUM_SHIFT);

 if (skb_vlan_tag_present(skb)) {
  vlan = skb_vlan_tag_get(skb);
  flags |= BIT(CORE_TX_BD_DATA_VLAN_INSERTION_SHIFT);
 }

 memset(&pkt, 0, sizeof(pkt));
 pkt.num_of_bds = 1 + nr_frags;
 pkt.vlan = vlan;
 pkt.bd_flags = flags;
 pkt.tx_dest = QED_LL2_TX_DEST_NW;
 pkt.first_frag = mapping;
 pkt.first_frag_len = skb->len;
 pkt.cookie = skb;
 if (test_bit(QED_MF_UFP_SPECIFIC, &cdev->mf_bits) &&
     test_bit(QED_LL2_XMIT_FLAGS_FIP_DISCOVERY, &xmit_flags))
  pkt.remove_stag = 1;






 rc = qed_ll2_prepare_tx_packet(p_hwfn, cdev->ll2->handle,
           &pkt, 1);
 if (rc)
  goto err;

 for (i = 0; i < nr_frags; i++) {
  frag = &skb_shinfo(skb)->frags[i];

  mapping = skb_frag_dma_map(&cdev->pdev->dev, frag, 0,
        skb_frag_size(frag), DMA_TO_DEVICE);

  if (unlikely(dma_mapping_error(&cdev->pdev->dev, mapping))) {
   DP_NOTICE(cdev,
      "Unable to map frag - dropping packet\n");
   rc = -ENOMEM;
   goto err;
  }

  rc = qed_ll2_set_fragment_of_tx_packet(p_hwfn,
             cdev->ll2->handle,
             mapping,
             skb_frag_size(frag));




  if (rc)
   goto err2;
 }

 return 0;

err:
 dma_unmap_single(&cdev->pdev->dev, mapping, skb->len, DMA_TO_DEVICE);
err2:
 return rc;
}
