
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tc35815_local {int fbl_count; struct RxFD* rfd_cur; struct RxFD* rfd_base; struct RxFD* rfd_limit; TYPE_3__* rx_skbs; int pci_dev; TYPE_1__* fbl_ptr; } ;
struct sk_buff {int protocol; int data; } ;
struct TYPE_9__ {int rx_bytes; int rx_frame_errors; int rx_crc_errors; int rx_fifo_errors; int rx_length_errors; int rx_errors; int rx_packets; } ;
struct net_device {int name; TYPE_4__ stats; int dev; } ;
struct TYPE_7__ {void* FDCtl; void* FDNext; void* FDStat; } ;
struct RxFD {TYPE_2__ fd; TYPE_5__* bd; } ;
struct BDesc {void* BDCtl; void* BuffData; } ;
struct TYPE_10__ {void* BDCtl; void* BuffData; } ;
struct TYPE_8__ {int skb_dma; struct sk_buff* skb; } ;
struct TYPE_6__ {struct BDesc* bd; } ;


 int BD_CownsBD ;
 int BD_RxBDID_MASK ;
 int BD_RxBDID_SHIFT ;
 int BUG_ON (int) ;
 scalar_t__ ETH_FCS_LEN ;
 unsigned int FD_BDCnt_MASK ;
 unsigned int FD_BDCnt_SHIFT ;
 unsigned int FD_CownsFD ;
 unsigned int FD_FDLength_MASK ;
 unsigned int FD_Next_EOL ;
 int HAVE_DMA_RXALIGN (struct tc35815_local*) ;
 scalar_t__ NET_IP_ALIGN ;
 int PCI_DMA_FROMDEVICE ;
 int RX_BUF_NUM ;
 int RX_BUF_SIZE ;
 int Rx_Align ;
 int Rx_CRCErr ;
 int Rx_Good ;
 int Rx_LongErr ;
 int Rx_Over ;
 int Rx_Stat_Mask ;
 struct sk_buff* alloc_rxbuf_skb (struct net_device*,int ,unsigned int*) ;
 void* cpu_to_le32 (unsigned int) ;
 int dev_info (int *,char*,int) ;
 int dump_rxfd (struct RxFD*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct RxFD* fd_bus_to_virt (struct tc35815_local*,int) ;
 int le32_to_cpu (void*) ;
 int memmove (int ,int ,int) ;
 struct tc35815_local* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_pktdata (struct tc35815_local*) ;
 scalar_t__ netif_msg_rx_err (struct tc35815_local*) ;
 scalar_t__ netif_msg_rx_status (struct tc35815_local*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int panic_queues (struct net_device*) ;
 int pci_unmap_single (int ,int,int,int ) ;
 int prefetch (int ) ;
 int print_eth (unsigned char*) ;
 int printk (char*,struct RxFD*,...) ;
 unsigned char* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int
tc35815_rx(struct net_device *dev, int limit)
{
 struct tc35815_local *lp = netdev_priv(dev);
 unsigned int fdctl;
 int i;
 int received = 0;

 while (!((fdctl = le32_to_cpu(lp->rfd_cur->fd.FDCtl)) & FD_CownsFD)) {
  int status = le32_to_cpu(lp->rfd_cur->fd.FDStat);
  int pkt_len = fdctl & FD_FDLength_MASK;
  int bd_count = (fdctl & FD_BDCnt_MASK) >> FD_BDCnt_SHIFT;




  pkt_len -= ETH_FCS_LEN;


  if (netif_msg_rx_status(lp))
   dump_rxfd(lp->rfd_cur);
  if (status & Rx_Good) {
   struct sk_buff *skb;
   unsigned char *data;
   int cur_bd;

   if (--limit < 0)
    break;
   BUG_ON(bd_count > 1);
   cur_bd = (le32_to_cpu(lp->rfd_cur->bd[0].BDCtl)
      & BD_RxBDID_MASK) >> BD_RxBDID_SHIFT;
   BUG_ON(cur_bd >= RX_BUF_NUM);

   skb = lp->rx_skbs[cur_bd].skb;
   prefetch(skb->data);
   lp->rx_skbs[cur_bd].skb = ((void*)0);
   pci_unmap_single(lp->pci_dev,
      lp->rx_skbs[cur_bd].skb_dma,
      RX_BUF_SIZE, PCI_DMA_FROMDEVICE);
   if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN != 0)
    memmove(skb->data, skb->data - NET_IP_ALIGN,
     pkt_len);
   data = skb_put(skb, pkt_len);
   if (netif_msg_pktdata(lp))
    print_eth(data);
   skb->protocol = eth_type_trans(skb, dev);
   netif_receive_skb(skb);
   received++;
   dev->stats.rx_packets++;
   dev->stats.rx_bytes += pkt_len;
  } else {
   dev->stats.rx_errors++;
   if (netif_msg_rx_err(lp))
    dev_info(&dev->dev, "Rx error (status %x)\n",
      status & Rx_Stat_Mask);

   if ((status & Rx_LongErr) && (status & Rx_CRCErr)) {
    status &= ~(Rx_LongErr|Rx_CRCErr);
    status |= Rx_Over;
   }
   if (status & Rx_LongErr)
    dev->stats.rx_length_errors++;
   if (status & Rx_Over)
    dev->stats.rx_fifo_errors++;
   if (status & Rx_CRCErr)
    dev->stats.rx_crc_errors++;
   if (status & Rx_Align)
    dev->stats.rx_frame_errors++;
  }

  if (bd_count > 0) {

   int bdctl = le32_to_cpu(lp->rfd_cur->bd[bd_count - 1].BDCtl);
   unsigned char id =
    (bdctl & BD_RxBDID_MASK) >> BD_RxBDID_SHIFT;






   BUG_ON(id >= RX_BUF_NUM);


   lp->fbl_count--;
   while (lp->fbl_count < RX_BUF_NUM)
   {
    unsigned char curid =
     (id + 1 + lp->fbl_count) % RX_BUF_NUM;
    struct BDesc *bd = &lp->fbl_ptr->bd[curid];
    if (!lp->rx_skbs[curid].skb) {
     lp->rx_skbs[curid].skb =
      alloc_rxbuf_skb(dev,
        lp->pci_dev,
        &lp->rx_skbs[curid].skb_dma);
     if (!lp->rx_skbs[curid].skb)
      break;
     bd->BuffData = cpu_to_le32(lp->rx_skbs[curid].skb_dma);
    }

    bd->BDCtl = cpu_to_le32(BD_CownsBD |
       (curid << BD_RxBDID_SHIFT) |
       RX_BUF_SIZE);
    lp->fbl_count++;
   }
  }
  for (i = 0; i < (bd_count + 1) / 2 + 1; i++) {




   lp->rfd_cur->fd.FDNext = cpu_to_le32(FD_Next_EOL);

   lp->rfd_cur->fd.FDCtl = cpu_to_le32(FD_CownsFD);
   lp->rfd_cur++;
  }
  if (lp->rfd_cur > lp->rfd_limit)
   lp->rfd_cur = lp->rfd_base;





 }

 return received;
}
