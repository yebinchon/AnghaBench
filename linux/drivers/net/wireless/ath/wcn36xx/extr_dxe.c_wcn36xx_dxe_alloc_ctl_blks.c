
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int def_ctrl; int reg_ctrl; int ctrl_skb; int ctrl_bd; int dxe_wq; int desc_num; int ch_type; } ;
struct wcn36xx {int tx_enable_state; TYPE_1__ dxe_rx_h_ch; TYPE_1__ dxe_rx_l_ch; TYPE_1__ dxe_tx_h_ch; TYPE_1__ dxe_tx_l_ch; } ;


 int ENOMEM ;
 int WCN36XX_DXE_CH_DEFAULT_CTL_TX_H ;
 int WCN36XX_DXE_CH_DEFAULT_CTL_TX_L ;
 int WCN36XX_DXE_CH_DESC_NUMB_RX_H ;
 int WCN36XX_DXE_CH_DESC_NUMB_RX_L ;
 int WCN36XX_DXE_CH_DESC_NUMB_TX_H ;
 int WCN36XX_DXE_CH_DESC_NUMB_TX_L ;
 int WCN36XX_DXE_CH_RX_H ;
 int WCN36XX_DXE_CH_RX_L ;
 int WCN36XX_DXE_CH_TX_H ;
 int WCN36XX_DXE_CH_TX_L ;
 int WCN36XX_DXE_CTRL_TX_H_BD ;
 int WCN36XX_DXE_CTRL_TX_H_SKB ;
 int WCN36XX_DXE_CTRL_TX_L_BD ;
 int WCN36XX_DXE_CTRL_TX_L_SKB ;
 int WCN36XX_DXE_REG_CTL_TX_H ;
 int WCN36XX_DXE_REG_CTL_TX_L ;
 int WCN36XX_DXE_WQ_TX_H ;
 int WCN36XX_DXE_WQ_TX_L ;
 int WCN36XX_SMSM_WLAN_TX_ENABLE ;
 int WCN36XX_SMSM_WLAN_TX_RINGS_EMPTY ;
 int qcom_smem_state_update_bits (int ,int,int) ;
 int wcn36xx_dxe_allocate_ctl_block (TYPE_1__*) ;
 int wcn36xx_dxe_free_ctl_blks (struct wcn36xx*) ;
 int wcn36xx_err (char*) ;

int wcn36xx_dxe_alloc_ctl_blks(struct wcn36xx *wcn)
{
 int ret;

 wcn->dxe_tx_l_ch.ch_type = WCN36XX_DXE_CH_TX_L;
 wcn->dxe_tx_h_ch.ch_type = WCN36XX_DXE_CH_TX_H;
 wcn->dxe_rx_l_ch.ch_type = WCN36XX_DXE_CH_RX_L;
 wcn->dxe_rx_h_ch.ch_type = WCN36XX_DXE_CH_RX_H;

 wcn->dxe_tx_l_ch.desc_num = WCN36XX_DXE_CH_DESC_NUMB_TX_L;
 wcn->dxe_tx_h_ch.desc_num = WCN36XX_DXE_CH_DESC_NUMB_TX_H;
 wcn->dxe_rx_l_ch.desc_num = WCN36XX_DXE_CH_DESC_NUMB_RX_L;
 wcn->dxe_rx_h_ch.desc_num = WCN36XX_DXE_CH_DESC_NUMB_RX_H;

 wcn->dxe_tx_l_ch.dxe_wq = WCN36XX_DXE_WQ_TX_L;
 wcn->dxe_tx_h_ch.dxe_wq = WCN36XX_DXE_WQ_TX_H;

 wcn->dxe_tx_l_ch.ctrl_bd = WCN36XX_DXE_CTRL_TX_L_BD;
 wcn->dxe_tx_h_ch.ctrl_bd = WCN36XX_DXE_CTRL_TX_H_BD;

 wcn->dxe_tx_l_ch.ctrl_skb = WCN36XX_DXE_CTRL_TX_L_SKB;
 wcn->dxe_tx_h_ch.ctrl_skb = WCN36XX_DXE_CTRL_TX_H_SKB;

 wcn->dxe_tx_l_ch.reg_ctrl = WCN36XX_DXE_REG_CTL_TX_L;
 wcn->dxe_tx_h_ch.reg_ctrl = WCN36XX_DXE_REG_CTL_TX_H;

 wcn->dxe_tx_l_ch.def_ctrl = WCN36XX_DXE_CH_DEFAULT_CTL_TX_L;
 wcn->dxe_tx_h_ch.def_ctrl = WCN36XX_DXE_CH_DEFAULT_CTL_TX_H;


 ret = wcn36xx_dxe_allocate_ctl_block(&wcn->dxe_tx_l_ch);
 if (ret)
  goto out_err;
 ret = wcn36xx_dxe_allocate_ctl_block(&wcn->dxe_tx_h_ch);
 if (ret)
  goto out_err;
 ret = wcn36xx_dxe_allocate_ctl_block(&wcn->dxe_rx_l_ch);
 if (ret)
  goto out_err;
 ret = wcn36xx_dxe_allocate_ctl_block(&wcn->dxe_rx_h_ch);
 if (ret)
  goto out_err;


 ret = qcom_smem_state_update_bits(wcn->tx_enable_state,
       WCN36XX_SMSM_WLAN_TX_ENABLE |
       WCN36XX_SMSM_WLAN_TX_RINGS_EMPTY,
       WCN36XX_SMSM_WLAN_TX_RINGS_EMPTY);
 if (ret)
  goto out_err;

 return 0;

out_err:
 wcn36xx_err("Failed to allocate DXE control blocks\n");
 wcn36xx_dxe_free_ctl_blks(wcn);
 return -ENOMEM;
}
