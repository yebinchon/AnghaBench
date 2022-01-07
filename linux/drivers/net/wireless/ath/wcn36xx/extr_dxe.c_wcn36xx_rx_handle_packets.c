
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wcn36xx_dxe_desc {int ctrl; int dst_addr_l; } ;
struct wcn36xx_dxe_ctl {struct wcn36xx_dxe_desc* desc; struct wcn36xx_dxe_ctl* next; struct sk_buff* skb; } ;
struct wcn36xx_dxe_ch {int lock; struct wcn36xx_dxe_ctl* head_blk_ctl; } ;
struct wcn36xx {int dev; } ;
struct sk_buff {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 int READ_ONCE (int) ;
 int WCN36XX_CH_STAT_INT_DONE_MASK ;
 int WCN36XX_CH_STAT_INT_ED_MASK ;
 int WCN36XX_CH_STAT_INT_ERR_MASK ;
 int WCN36XX_DXE_0_INT_CLR ;
 int WCN36XX_DXE_0_INT_DONE_CLR ;
 int WCN36XX_DXE_0_INT_ED_CLR ;
 int WCN36XX_DXE_0_INT_ERR_CLR ;
 int WCN36XX_DXE_ENCH_ADDR ;
 int WCN36XX_PKT_SIZE ;
 int WCN36xx_DXE_CTRL_VLD ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wcn36xx_dxe_fill_skb (int ,struct wcn36xx_dxe_ctl*,int ) ;
 int wcn36xx_dxe_read_register (struct wcn36xx*,int,int*) ;
 int wcn36xx_dxe_write_register (struct wcn36xx*,int ,int) ;
 int wcn36xx_err (char*) ;
 int wcn36xx_rx_skb (struct wcn36xx*,struct sk_buff*) ;

__attribute__((used)) static int wcn36xx_rx_handle_packets(struct wcn36xx *wcn,
         struct wcn36xx_dxe_ch *ch,
         u32 ctrl,
         u32 en_mask,
         u32 int_mask,
         u32 status_reg)
{
 struct wcn36xx_dxe_desc *dxe;
 struct wcn36xx_dxe_ctl *ctl;
 dma_addr_t dma_addr;
 struct sk_buff *skb;
 u32 int_reason;
 int ret;

 wcn36xx_dxe_read_register(wcn, status_reg, &int_reason);
 wcn36xx_dxe_write_register(wcn, WCN36XX_DXE_0_INT_CLR, int_mask);

 if (int_reason & WCN36XX_CH_STAT_INT_ERR_MASK) {
  wcn36xx_dxe_write_register(wcn,
        WCN36XX_DXE_0_INT_ERR_CLR,
        int_mask);

  wcn36xx_err("DXE IRQ reported error on RX channel\n");
 }

 if (int_reason & WCN36XX_CH_STAT_INT_DONE_MASK)
  wcn36xx_dxe_write_register(wcn,
        WCN36XX_DXE_0_INT_DONE_CLR,
        int_mask);

 if (int_reason & WCN36XX_CH_STAT_INT_ED_MASK)
  wcn36xx_dxe_write_register(wcn,
        WCN36XX_DXE_0_INT_ED_CLR,
        int_mask);

 if (!(int_reason & (WCN36XX_CH_STAT_INT_DONE_MASK |
       WCN36XX_CH_STAT_INT_ED_MASK)))
  return 0;

 spin_lock(&ch->lock);

 ctl = ch->head_blk_ctl;
 dxe = ctl->desc;

 while (!(READ_ONCE(dxe->ctrl) & WCN36xx_DXE_CTRL_VLD)) {
  skb = ctl->skb;
  dma_addr = dxe->dst_addr_l;
  ret = wcn36xx_dxe_fill_skb(wcn->dev, ctl, GFP_ATOMIC);
  if (0 == ret) {



   dma_unmap_single(wcn->dev, dma_addr, WCN36XX_PKT_SIZE,
     DMA_FROM_DEVICE);
   wcn36xx_rx_skb(wcn, skb);
  }

  dxe->ctrl = ctrl;
  ctl = ctl->next;
  dxe = ctl->desc;
 }
 wcn36xx_dxe_write_register(wcn, WCN36XX_DXE_ENCH_ADDR, en_mask);

 ch->head_blk_ctl = ctl;

 spin_unlock(&ch->lock);

 return 0;
}
