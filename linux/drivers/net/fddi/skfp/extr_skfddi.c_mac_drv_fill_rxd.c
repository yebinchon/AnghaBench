
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned char* data; } ;
struct TYPE_4__ {unsigned long dma_addr; struct sk_buff* skb; } ;
struct s_smt_fp_rxd {TYPE_2__ rxd_os; } ;
struct TYPE_3__ {int MaxFrameSize; unsigned char* LocalRxBuffer; unsigned long LocalRxBufferDMA; int pdev; } ;
struct s_smc {TYPE_1__ os; } ;


 int FIRST_FRAG ;
 int GFP_ATOMIC ;
 struct s_smt_fp_rxd* HWM_GET_CURR_RXD (struct s_smc*) ;
 scalar_t__ HWM_GET_RX_FREE (struct s_smc*) ;
 int LAST_FRAG ;
 int PCI_DMA_FROMDEVICE ;
 struct sk_buff* alloc_skb (int,int ) ;
 int hwm_rx_frag (struct s_smc*,unsigned char*,unsigned long,int,int) ;
 unsigned long pci_map_single (int *,unsigned char*,int,int ) ;
 int pr_debug (char*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

void mac_drv_fill_rxd(struct s_smc *smc)
{
 int MaxFrameSize;
 unsigned char *v_addr;
 unsigned long b_addr;
 struct sk_buff *skb;
 volatile struct s_smt_fp_rxd *rxd;

 pr_debug("entering mac_drv_fill_rxd\n");




 MaxFrameSize = smc->os.MaxFrameSize;

 while (HWM_GET_RX_FREE(smc) > 0) {
  pr_debug(".\n");

  rxd = HWM_GET_CURR_RXD(smc);
  skb = alloc_skb(MaxFrameSize + 3, GFP_ATOMIC);
  if (skb) {

   skb_reserve(skb, 3);
   skb_put(skb, MaxFrameSize);
   v_addr = skb->data;
   b_addr = pci_map_single(&smc->os.pdev,
      v_addr,
      MaxFrameSize,
      PCI_DMA_FROMDEVICE);
   rxd->rxd_os.dma_addr = b_addr;
  } else {





   pr_debug("Queueing invalid buffer!\n");
   v_addr = smc->os.LocalRxBuffer;
   b_addr = smc->os.LocalRxBufferDMA;
  }

  rxd->rxd_os.skb = skb;


  hwm_rx_frag(smc, v_addr, b_addr, MaxFrameSize,
       FIRST_FRAG | LAST_FRAG);
 }
 pr_debug("leaving mac_drv_fill_rxd\n");
}
