
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int protocol; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct atl1c_rrd_ring {int next_to_clean; } ;
struct atl1c_rfd_ring {struct atl1c_buffer* buffer_info; } ;
struct atl1c_recv_ret_status {int word3; int word0; int vlan_tag; } ;
struct atl1c_buffer {struct sk_buff* skb; int length; int dma; } ;
struct atl1c_adapter {struct atl1c_rrd_ring rrd_ring; struct atl1c_rfd_ring rfd_ring; struct net_device* netdev; struct pci_dev* pdev; } ;


 struct atl1c_recv_ret_status* ATL1C_RRD_DESC (struct atl1c_rrd_ring*,int ) ;
 int AT_TAG_TO_VLAN (int ,int) ;
 int ETH_FCS_LEN ;
 int ETH_P_8021Q ;
 int PCI_DMA_FROMDEVICE ;
 int RRS_802_3_LEN_ERR ;
 int RRS_PKT_SIZE_MASK ;
 int RRS_PKT_SIZE_SHIFT ;
 int RRS_RXD_IS_VALID (int) ;
 int RRS_RX_ERR_SUM ;
 int RRS_RX_RFD_CNT_MASK ;
 int RRS_RX_RFD_CNT_SHIFT ;
 int RRS_RX_RFD_INDEX_MASK ;
 int RRS_RX_RFD_INDEX_SHIFT ;
 int RRS_VLAN_INS ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int atl1c_alloc_rx_buffer (struct atl1c_adapter*) ;
 int atl1c_clean_rfd (struct atl1c_rfd_ring*,struct atl1c_recv_ret_status*,int) ;
 int atl1c_clean_rrd (struct atl1c_rrd_ring*,struct atl1c_recv_ret_status*,int) ;
 int atl1c_rx_checksum (struct atl1c_adapter*,struct sk_buff*,struct atl1c_recv_ret_status*) ;
 int dev_warn (int *,char*,...) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int ) ;
 int le16_to_cpu (int) ;
 scalar_t__ likely (int) ;
 scalar_t__ netif_msg_rx_err (struct atl1c_adapter*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void atl1c_clean_rx_irq(struct atl1c_adapter *adapter,
     int *work_done, int work_to_do)
{
 u16 rfd_num, rfd_index;
 u16 count = 0;
 u16 length;
 struct pci_dev *pdev = adapter->pdev;
 struct net_device *netdev = adapter->netdev;
 struct atl1c_rfd_ring *rfd_ring = &adapter->rfd_ring;
 struct atl1c_rrd_ring *rrd_ring = &adapter->rrd_ring;
 struct sk_buff *skb;
 struct atl1c_recv_ret_status *rrs;
 struct atl1c_buffer *buffer_info;

 while (1) {
  if (*work_done >= work_to_do)
   break;
  rrs = ATL1C_RRD_DESC(rrd_ring, rrd_ring->next_to_clean);
  if (likely(RRS_RXD_IS_VALID(rrs->word3))) {
   rfd_num = (rrs->word0 >> RRS_RX_RFD_CNT_SHIFT) &
    RRS_RX_RFD_CNT_MASK;
   if (unlikely(rfd_num != 1))

    if (netif_msg_rx_err(adapter))
     dev_warn(&pdev->dev,
      "Multi rfd not support yet!\n");
   goto rrs_checked;
  } else {
   break;
  }
rrs_checked:
  atl1c_clean_rrd(rrd_ring, rrs, rfd_num);
  if (rrs->word3 & (RRS_RX_ERR_SUM | RRS_802_3_LEN_ERR)) {
   atl1c_clean_rfd(rfd_ring, rrs, rfd_num);
   if (netif_msg_rx_err(adapter))
    dev_warn(&pdev->dev,
      "wrong packet! rrs word3 is %x\n",
      rrs->word3);
   continue;
  }

  length = le16_to_cpu((rrs->word3 >> RRS_PKT_SIZE_SHIFT) &
    RRS_PKT_SIZE_MASK);

  if (likely(rfd_num == 1)) {
   rfd_index = (rrs->word0 >> RRS_RX_RFD_INDEX_SHIFT) &
     RRS_RX_RFD_INDEX_MASK;
   buffer_info = &rfd_ring->buffer_info[rfd_index];
   pci_unmap_single(pdev, buffer_info->dma,
    buffer_info->length, PCI_DMA_FROMDEVICE);
   skb = buffer_info->skb;
  } else {

   if (netif_msg_rx_err(adapter))
    dev_warn(&pdev->dev,
     "Multi rfd not support yet!\n");
   break;
  }
  atl1c_clean_rfd(rfd_ring, rrs, rfd_num);
  skb_put(skb, length - ETH_FCS_LEN);
  skb->protocol = eth_type_trans(skb, netdev);
  atl1c_rx_checksum(adapter, skb, rrs);
  if (rrs->word3 & RRS_VLAN_INS) {
   u16 vlan;

   AT_TAG_TO_VLAN(rrs->vlan_tag, vlan);
   vlan = le16_to_cpu(vlan);
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan);
  }
  netif_receive_skb(skb);

  (*work_done)++;
  count++;
 }
 if (count)
  atl1c_alloc_rx_buffer(adapter);
}
