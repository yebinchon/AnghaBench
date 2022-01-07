
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* head_blk_ctl; } ;
struct wcn36xx {TYPE_3__ dxe_tx_l_ch; int dev; TYPE_3__ dxe_tx_h_ch; TYPE_3__ dxe_rx_l_ch; TYPE_3__ dxe_rx_h_ch; int mgmt_mem_pool; int data_mem_pool; scalar_t__ is_pronto; } ;
struct TYPE_8__ {int desc_phy_addr; TYPE_1__* desc; } ;
struct TYPE_7__ {int phy_next_l; } ;


 int WCN36XX_CCU_DXE_INT_SELECT_PRONTO ;
 int WCN36XX_CCU_DXE_INT_SELECT_RIVA ;
 int WCN36XX_DXE_CH_DEFAULT_CTL_RX_H ;
 int WCN36XX_DXE_CH_DEFAULT_CTL_RX_L ;
 int WCN36XX_DXE_CH_DEST_ADDR_RX_H ;
 int WCN36XX_DXE_CH_DEST_ADDR_RX_L ;
 int WCN36XX_DXE_CH_DEST_ADDR_TX_H ;
 int WCN36XX_DXE_CH_DEST_ADDR_TX_L ;
 int WCN36XX_DXE_CH_NEXT_DESC_ADDR_RX_H ;
 int WCN36XX_DXE_CH_NEXT_DESC_ADDR_RX_L ;
 int WCN36XX_DXE_CH_NEXT_DESC_ADDR_TX_H ;
 int WCN36XX_DXE_CH_NEXT_DESC_ADDR_TX_L ;
 int WCN36XX_DXE_CH_SRC_ADDR_RX_H ;
 int WCN36XX_DXE_CH_SRC_ADDR_RX_L ;
 int WCN36XX_DXE_INT_CH0_MASK ;
 int WCN36XX_DXE_INT_CH1_MASK ;
 int WCN36XX_DXE_INT_CH3_MASK ;
 int WCN36XX_DXE_INT_CH4_MASK ;
 int WCN36XX_DXE_REG_CH_EN ;
 int WCN36XX_DXE_REG_CSR_RESET ;
 int WCN36XX_DXE_REG_CTL_RX_H ;
 int WCN36XX_DXE_REG_CTL_RX_L ;
 int WCN36XX_DXE_REG_RESET ;
 int WCN36XX_DXE_WQ_RX_H ;
 int WCN36XX_DXE_WQ_RX_L ;
 int WCN36XX_DXE_WQ_TX_H ;
 int WCN36XX_DXE_WQ_TX_L ;
 int WCN36XX_INT_MASK_CHAN_RX_H ;
 int WCN36XX_INT_MASK_CHAN_RX_L ;
 int WCN36XX_INT_MASK_CHAN_TX_H ;
 int WCN36XX_INT_MASK_CHAN_TX_L ;
 int dev_err (int ,char*) ;
 int wcn36xx_ccu_write_register (struct wcn36xx*,int ,int) ;
 int wcn36xx_dxe_ch_alloc_skb (struct wcn36xx*,TYPE_3__*) ;
 int wcn36xx_dxe_deinit_descs (int ,TYPE_3__*) ;
 int wcn36xx_dxe_enable_ch_int (struct wcn36xx*,int ) ;
 int wcn36xx_dxe_init_descs (int ,TYPE_3__*) ;
 int wcn36xx_dxe_init_tx_bd (TYPE_3__*,int *) ;
 int wcn36xx_dxe_read_register (struct wcn36xx*,int ,int*) ;
 int wcn36xx_dxe_request_irqs (struct wcn36xx*) ;
 int wcn36xx_dxe_write_register (struct wcn36xx*,int ,int) ;

int wcn36xx_dxe_init(struct wcn36xx *wcn)
{
 int reg_data = 0, ret;

 reg_data = WCN36XX_DXE_REG_RESET;
 wcn36xx_dxe_write_register(wcn, WCN36XX_DXE_REG_CSR_RESET, reg_data);


 reg_data = (WCN36XX_DXE_INT_CH3_MASK | WCN36XX_DXE_INT_CH1_MASK) << 16 |
      WCN36XX_DXE_INT_CH0_MASK | WCN36XX_DXE_INT_CH4_MASK;
 if (wcn->is_pronto)
  wcn36xx_ccu_write_register(wcn, WCN36XX_CCU_DXE_INT_SELECT_PRONTO, reg_data);
 else
  wcn36xx_ccu_write_register(wcn, WCN36XX_CCU_DXE_INT_SELECT_RIVA, reg_data);




 ret = wcn36xx_dxe_init_descs(wcn->dev, &wcn->dxe_tx_l_ch);
 if (ret) {
  dev_err(wcn->dev, "Error allocating descriptor\n");
  return ret;
 }
 wcn36xx_dxe_init_tx_bd(&wcn->dxe_tx_l_ch, &wcn->data_mem_pool);


 wcn36xx_dxe_write_register(wcn, WCN36XX_DXE_CH_NEXT_DESC_ADDR_TX_L,
  wcn->dxe_tx_l_ch.head_blk_ctl->desc_phy_addr);


 wcn36xx_dxe_write_register(wcn,
  WCN36XX_DXE_CH_DEST_ADDR_TX_L,
  WCN36XX_DXE_WQ_TX_L);

 wcn36xx_dxe_read_register(wcn, WCN36XX_DXE_REG_CH_EN, &reg_data);
 wcn36xx_dxe_enable_ch_int(wcn, WCN36XX_INT_MASK_CHAN_TX_L);




 ret = wcn36xx_dxe_init_descs(wcn->dev, &wcn->dxe_tx_h_ch);
 if (ret) {
  dev_err(wcn->dev, "Error allocating descriptor\n");
  goto out_err_txh_ch;
 }

 wcn36xx_dxe_init_tx_bd(&wcn->dxe_tx_h_ch, &wcn->mgmt_mem_pool);


 wcn36xx_dxe_write_register(wcn, WCN36XX_DXE_CH_NEXT_DESC_ADDR_TX_H,
  wcn->dxe_tx_h_ch.head_blk_ctl->desc_phy_addr);


 wcn36xx_dxe_write_register(wcn,
  WCN36XX_DXE_CH_DEST_ADDR_TX_H,
  WCN36XX_DXE_WQ_TX_H);

 wcn36xx_dxe_read_register(wcn, WCN36XX_DXE_REG_CH_EN, &reg_data);


 wcn36xx_dxe_enable_ch_int(wcn, WCN36XX_INT_MASK_CHAN_TX_H);




 ret = wcn36xx_dxe_init_descs(wcn->dev, &wcn->dxe_rx_l_ch);
 if (ret) {
  dev_err(wcn->dev, "Error allocating descriptor\n");
  goto out_err_rxl_ch;
 }



 wcn36xx_dxe_ch_alloc_skb(wcn, &wcn->dxe_rx_l_ch);


 wcn36xx_dxe_write_register(wcn, WCN36XX_DXE_CH_NEXT_DESC_ADDR_RX_L,
  wcn->dxe_rx_l_ch.head_blk_ctl->desc_phy_addr);


 wcn36xx_dxe_write_register(wcn,
  WCN36XX_DXE_CH_SRC_ADDR_RX_L,
  WCN36XX_DXE_WQ_RX_L);


 wcn36xx_dxe_write_register(wcn,
  WCN36XX_DXE_CH_DEST_ADDR_RX_L,
  wcn->dxe_rx_l_ch.head_blk_ctl->desc->phy_next_l);


 wcn36xx_dxe_write_register(wcn,
  WCN36XX_DXE_REG_CTL_RX_L,
  WCN36XX_DXE_CH_DEFAULT_CTL_RX_L);


 wcn36xx_dxe_enable_ch_int(wcn, WCN36XX_INT_MASK_CHAN_RX_L);




 ret = wcn36xx_dxe_init_descs(wcn->dev, &wcn->dxe_rx_h_ch);
 if (ret) {
  dev_err(wcn->dev, "Error allocating descriptor\n");
  goto out_err_rxh_ch;
 }


 wcn36xx_dxe_ch_alloc_skb(wcn, &wcn->dxe_rx_h_ch);


 wcn36xx_dxe_write_register(wcn, WCN36XX_DXE_CH_NEXT_DESC_ADDR_RX_H,
  wcn->dxe_rx_h_ch.head_blk_ctl->desc_phy_addr);


 wcn36xx_dxe_write_register(wcn,
  WCN36XX_DXE_CH_SRC_ADDR_RX_H,
  WCN36XX_DXE_WQ_RX_H);


 wcn36xx_dxe_write_register(wcn,
  WCN36XX_DXE_CH_DEST_ADDR_RX_H,
   wcn->dxe_rx_h_ch.head_blk_ctl->desc->phy_next_l);


 wcn36xx_dxe_write_register(wcn,
  WCN36XX_DXE_REG_CTL_RX_H,
  WCN36XX_DXE_CH_DEFAULT_CTL_RX_H);


 wcn36xx_dxe_enable_ch_int(wcn, WCN36XX_INT_MASK_CHAN_RX_H);

 ret = wcn36xx_dxe_request_irqs(wcn);
 if (ret < 0)
  goto out_err_irq;

 return 0;

out_err_irq:
 wcn36xx_dxe_deinit_descs(wcn->dev, &wcn->dxe_rx_h_ch);
out_err_rxh_ch:
 wcn36xx_dxe_deinit_descs(wcn->dev, &wcn->dxe_rx_l_ch);
out_err_rxl_ch:
 wcn36xx_dxe_deinit_descs(wcn->dev, &wcn->dxe_tx_h_ch);
out_err_txh_ch:
 wcn36xx_dxe_deinit_descs(wcn->dev, &wcn->dxe_tx_l_ch);

 return ret;
}
