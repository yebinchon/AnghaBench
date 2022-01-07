
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int protocol; } ;
struct TYPE_7__ {int pkt_size; } ;
struct TYPE_8__ {int valid; TYPE_2__ xsum_sz; } ;
struct rx_return_desc {int num_buf; int pkt_flg; int err_flg; int vlan_tag; size_t buf_indx; TYPE_3__ xsz; } ;
struct atl1_rrd_ring {scalar_t__ count; int next_to_clean; } ;
struct atl1_rfd_ring {scalar_t__ next_to_clean; scalar_t__ count; int next_to_use; struct atl1_buffer* buffer_info; } ;
struct atl1_buffer {scalar_t__ alloced; struct sk_buff* skb; scalar_t__ dma; int length; } ;
struct TYPE_6__ {scalar_t__ hw_addr; } ;
struct TYPE_9__ {int next_to_use; } ;
struct atl1_adapter {int mb_lock; TYPE_1__ hw; struct atl1_rrd_ring rrd_ring; struct atl1_rfd_ring rfd_ring; TYPE_4__ tpd_ring; int netdev; TYPE_5__* pdev; int rx_buffer_len; } ;
struct TYPE_10__ {int dev; } ;


 struct rx_return_desc* ATL1_RRD_DESC (struct atl1_rrd_ring*,scalar_t__) ;
 int ERR_FLAG_IP_CHKSUM ;
 int ERR_FLAG_L4_CHKSUM ;
 int ERR_FLAG_LEN ;
 scalar_t__ ETH_FCS_LEN ;
 int ETH_P_8021Q ;
 int KERN_DEBUG ;
 scalar_t__ MB_RFD_PROD_INDX_MASK ;
 scalar_t__ MB_RFD_PROD_INDX_SHIFT ;
 scalar_t__ MB_RRD_CONS_INDX_MASK ;
 scalar_t__ MB_RRD_CONS_INDX_SHIFT ;
 scalar_t__ MB_TPD_PROD_INDX_MASK ;
 scalar_t__ MB_TPD_PROD_INDX_SHIFT ;
 int PACKET_FLAG_ERR ;
 int PACKET_FLAG_VLAN_INS ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ REG_MAILBOX ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,scalar_t__) ;
 int atl1_alloc_rx_buffers (struct atl1_adapter*) ;
 int atl1_clean_alloc_flag (struct atl1_adapter*,struct rx_return_desc*,int ) ;
 int atl1_rx_checksum (struct atl1_adapter*,struct rx_return_desc*,struct sk_buff*) ;
 int atl1_update_rfd_index (struct atl1_adapter*,struct rx_return_desc*) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 int dev_printk (int ,int *,char*,...) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int htons (int ) ;
 int iowrite32 (scalar_t__,scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ netif_msg_rx_err (struct atl1_adapter*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pci_unmap_page (TYPE_5__*,scalar_t__,int ,int ) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atl1_intr_rx(struct atl1_adapter *adapter, int budget)
{
 int i, count;
 u16 length;
 u16 rrd_next_to_clean;
 u32 value;
 struct atl1_rfd_ring *rfd_ring = &adapter->rfd_ring;
 struct atl1_rrd_ring *rrd_ring = &adapter->rrd_ring;
 struct atl1_buffer *buffer_info;
 struct rx_return_desc *rrd;
 struct sk_buff *skb;

 count = 0;

 rrd_next_to_clean = atomic_read(&rrd_ring->next_to_clean);

 while (count < budget) {
  rrd = ATL1_RRD_DESC(rrd_ring, rrd_next_to_clean);
  i = 1;
  if (likely(rrd->xsz.valid)) {
chk_rrd:

   if (likely(rrd->num_buf == 1))
    goto rrd_ok;
   else if (netif_msg_rx_err(adapter)) {
    dev_printk(KERN_DEBUG, &adapter->pdev->dev,
     "unexpected RRD buffer count\n");
    dev_printk(KERN_DEBUG, &adapter->pdev->dev,
     "rx_buf_len = %d\n",
     adapter->rx_buffer_len);
    dev_printk(KERN_DEBUG, &adapter->pdev->dev,
     "RRD num_buf = %d\n",
     rrd->num_buf);
    dev_printk(KERN_DEBUG, &adapter->pdev->dev,
     "RRD pkt_len = %d\n",
     rrd->xsz.xsum_sz.pkt_size);
    dev_printk(KERN_DEBUG, &adapter->pdev->dev,
     "RRD pkt_flg = 0x%08X\n",
     rrd->pkt_flg);
    dev_printk(KERN_DEBUG, &adapter->pdev->dev,
     "RRD err_flg = 0x%08X\n",
     rrd->err_flg);
    dev_printk(KERN_DEBUG, &adapter->pdev->dev,
     "RRD vlan_tag = 0x%08X\n",
     rrd->vlan_tag);
   }


   if (unlikely(i-- > 0)) {

    udelay(1);
    goto chk_rrd;
   }

   if (netif_msg_rx_err(adapter))
    dev_printk(KERN_DEBUG, &adapter->pdev->dev,
     "bad RRD\n");

   if (rrd->num_buf > 1)
    atl1_update_rfd_index(adapter, rrd);


   rrd->xsz.valid = 0;
   if (++rrd_next_to_clean == rrd_ring->count)
    rrd_next_to_clean = 0;
   count++;
   continue;
  } else {

   break;
  }
rrd_ok:

  atl1_clean_alloc_flag(adapter, rrd, 0);

  buffer_info = &rfd_ring->buffer_info[rrd->buf_indx];
  if (++rfd_ring->next_to_clean == rfd_ring->count)
   rfd_ring->next_to_clean = 0;


  if (++rrd_next_to_clean == rrd_ring->count)
   rrd_next_to_clean = 0;
  count++;

  if (unlikely(rrd->pkt_flg & PACKET_FLAG_ERR)) {
   if (!(rrd->err_flg &
    (ERR_FLAG_IP_CHKSUM | ERR_FLAG_L4_CHKSUM
    | ERR_FLAG_LEN))) {

    buffer_info->alloced = 0;
    rrd->xsz.valid = 0;
    continue;
   }
  }


  pci_unmap_page(adapter->pdev, buffer_info->dma,
          buffer_info->length, PCI_DMA_FROMDEVICE);
  buffer_info->dma = 0;
  skb = buffer_info->skb;
  length = le16_to_cpu(rrd->xsz.xsum_sz.pkt_size);

  skb_put(skb, length - ETH_FCS_LEN);


  atl1_rx_checksum(adapter, rrd, skb);
  skb->protocol = eth_type_trans(skb, adapter->netdev);

  if (rrd->pkt_flg & PACKET_FLAG_VLAN_INS) {
   u16 vlan_tag = (rrd->vlan_tag >> 4) |
     ((rrd->vlan_tag & 7) << 13) |
     ((rrd->vlan_tag & 8) << 9);

   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
  }
  netif_receive_skb(skb);


  buffer_info->skb = ((void*)0);
  buffer_info->alloced = 0;
  rrd->xsz.valid = 0;
 }

 atomic_set(&rrd_ring->next_to_clean, rrd_next_to_clean);

 atl1_alloc_rx_buffers(adapter);


 if (count) {
  u32 tpd_next_to_use;
  u32 rfd_next_to_use;

  spin_lock(&adapter->mb_lock);

  tpd_next_to_use = atomic_read(&adapter->tpd_ring.next_to_use);
  rfd_next_to_use =
      atomic_read(&adapter->rfd_ring.next_to_use);
  rrd_next_to_clean =
      atomic_read(&adapter->rrd_ring.next_to_clean);
  value = ((rfd_next_to_use & MB_RFD_PROD_INDX_MASK) <<
   MB_RFD_PROD_INDX_SHIFT) |
                        ((rrd_next_to_clean & MB_RRD_CONS_INDX_MASK) <<
   MB_RRD_CONS_INDX_SHIFT) |
                        ((tpd_next_to_use & MB_TPD_PROD_INDX_MASK) <<
   MB_TPD_PROD_INDX_SHIFT);
  iowrite32(value, adapter->hw.hw_addr + REG_MAILBOX);
  spin_unlock(&adapter->mb_lock);
 }

 return count;
}
