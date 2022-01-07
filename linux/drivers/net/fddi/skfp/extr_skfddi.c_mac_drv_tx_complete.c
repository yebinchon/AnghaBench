
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_8__ {scalar_t__ dma_addr; struct sk_buff* skb; } ;
struct s_smt_fp_txd {TYPE_4__ txd_os; } ;
struct TYPE_5__ {int tx_bytes; int tx_packets; } ;
struct TYPE_6__ {TYPE_1__ gen; } ;
struct TYPE_7__ {TYPE_2__ MacStat; int pdev; } ;
struct s_smc {TYPE_3__ os; } ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int pci_unmap_single (int *,scalar_t__,scalar_t__,int ) ;
 int pr_debug (char*) ;

void mac_drv_tx_complete(struct s_smc *smc, volatile struct s_smt_fp_txd *txd)
{
 struct sk_buff *skb;

 pr_debug("entering mac_drv_tx_complete\n");


 if (!(skb = txd->txd_os.skb)) {
  pr_debug("TXD with no skb assigned.\n");
  return;
 }
 txd->txd_os.skb = ((void*)0);


 pci_unmap_single(&smc->os.pdev, txd->txd_os.dma_addr,
    skb->len, PCI_DMA_TODEVICE);
 txd->txd_os.dma_addr = 0;

 smc->os.MacStat.gen.tx_packets++;
 smc->os.MacStat.gen.tx_bytes+=skb->len;


 dev_kfree_skb_irq(skb);

 pr_debug("leaving mac_drv_tx_complete\n");
}
