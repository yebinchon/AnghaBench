
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; } ;
struct rx_return_desc {int pkt_flg; int err_flg; } ;
struct pci_dev {int dev; } ;
struct atl1_adapter {int hw_csum_good; int hw_csum_err; struct pci_dev* pdev; } ;


 int CHECKSUM_UNNECESSARY ;
 int ERR_FLAG_CODE ;
 int ERR_FLAG_CRC ;
 int ERR_FLAG_IP_CHKSUM ;
 int ERR_FLAG_L4_CHKSUM ;
 int ERR_FLAG_OV ;
 int ERR_FLAG_TRUNC ;
 int KERN_DEBUG ;
 int PACKET_FLAG_ERR ;
 int PACKET_FLAG_IPV4 ;
 int dev_printk (int ,int *,char*) ;
 scalar_t__ likely (int) ;
 scalar_t__ netif_msg_rx_err (struct atl1_adapter*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void atl1_rx_checksum(struct atl1_adapter *adapter,
 struct rx_return_desc *rrd, struct sk_buff *skb)
{
 struct pci_dev *pdev = adapter->pdev;
 skb_checksum_none_assert(skb);

 if (unlikely(rrd->pkt_flg & PACKET_FLAG_ERR)) {
  if (rrd->err_flg & (ERR_FLAG_CRC | ERR_FLAG_TRUNC |
     ERR_FLAG_CODE | ERR_FLAG_OV)) {
   adapter->hw_csum_err++;
   if (netif_msg_rx_err(adapter))
    dev_printk(KERN_DEBUG, &pdev->dev,
     "rx checksum error\n");
   return;
  }
 }


 if (!(rrd->pkt_flg & PACKET_FLAG_IPV4))

  return;


 if (likely(!(rrd->err_flg &
  (ERR_FLAG_IP_CHKSUM | ERR_FLAG_L4_CHKSUM)))) {
  skb->ip_summed = CHECKSUM_UNNECESSARY;
  adapter->hw_csum_good++;
  return;
 }
}
