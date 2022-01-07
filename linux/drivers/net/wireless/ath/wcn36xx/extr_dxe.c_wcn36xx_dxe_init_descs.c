
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_dxe_desc {scalar_t__ phy_next_l; int src_addr_l; int ctrl; int dst_addr_l; } ;
struct wcn36xx_dxe_ctl {struct wcn36xx_dxe_ctl* next; scalar_t__ desc_phy_addr; struct wcn36xx_dxe_desc* desc; } ;
struct wcn36xx_dxe_ch {int desc_num; int ch_type; struct wcn36xx_dxe_ctl* head_blk_ctl; int dma_addr; scalar_t__ cpu_addr; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;




 int WCN36XX_DXE_CTRL_RX_H ;
 int WCN36XX_DXE_CTRL_RX_L ;
 int WCN36XX_DXE_CTRL_TX_H ;
 int WCN36XX_DXE_CTRL_TX_L ;
 int WCN36XX_DXE_WQ_RX_H ;
 int WCN36XX_DXE_WQ_RX_L ;
 int WCN36XX_DXE_WQ_TX_H ;
 int WCN36XX_DXE_WQ_TX_L ;
 scalar_t__ dma_alloc_coherent (struct device*,size_t,int *,int ) ;

__attribute__((used)) static int wcn36xx_dxe_init_descs(struct device *dev, struct wcn36xx_dxe_ch *wcn_ch)
{
 struct wcn36xx_dxe_desc *cur_dxe = ((void*)0);
 struct wcn36xx_dxe_desc *prev_dxe = ((void*)0);
 struct wcn36xx_dxe_ctl *cur_ctl = ((void*)0);
 size_t size;
 int i;

 size = wcn_ch->desc_num * sizeof(struct wcn36xx_dxe_desc);
 wcn_ch->cpu_addr = dma_alloc_coherent(dev, size, &wcn_ch->dma_addr,
           GFP_KERNEL);
 if (!wcn_ch->cpu_addr)
  return -ENOMEM;

 cur_dxe = (struct wcn36xx_dxe_desc *)wcn_ch->cpu_addr;
 cur_ctl = wcn_ch->head_blk_ctl;

 for (i = 0; i < wcn_ch->desc_num; i++) {
  cur_ctl->desc = cur_dxe;
  cur_ctl->desc_phy_addr = wcn_ch->dma_addr +
   i * sizeof(struct wcn36xx_dxe_desc);

  switch (wcn_ch->ch_type) {
  case 128:
   cur_dxe->ctrl = WCN36XX_DXE_CTRL_TX_L;
   cur_dxe->dst_addr_l = WCN36XX_DXE_WQ_TX_L;
   break;
  case 129:
   cur_dxe->ctrl = WCN36XX_DXE_CTRL_TX_H;
   cur_dxe->dst_addr_l = WCN36XX_DXE_WQ_TX_H;
   break;
  case 130:
   cur_dxe->ctrl = WCN36XX_DXE_CTRL_RX_L;
   cur_dxe->src_addr_l = WCN36XX_DXE_WQ_RX_L;
   break;
  case 131:
   cur_dxe->ctrl = WCN36XX_DXE_CTRL_RX_H;
   cur_dxe->src_addr_l = WCN36XX_DXE_WQ_RX_H;
   break;
  }
  if (0 == i) {
   cur_dxe->phy_next_l = 0;
  } else if ((0 < i) && (i < wcn_ch->desc_num - 1)) {
   prev_dxe->phy_next_l =
    cur_ctl->desc_phy_addr;
  } else if (i == (wcn_ch->desc_num - 1)) {
   prev_dxe->phy_next_l =
    cur_ctl->desc_phy_addr;
   cur_dxe->phy_next_l =
    wcn_ch->head_blk_ctl->desc_phy_addr;
  }
  cur_ctl = cur_ctl->next;
  prev_dxe = cur_dxe;
  cur_dxe++;
 }

 return 0;
}
