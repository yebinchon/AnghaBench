
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int dxe_rx_h_ch; int dxe_rx_l_ch; } ;


 int WCN36XX_DXE_CH_STATUS_REG_ADDR_RX_H ;
 int WCN36XX_DXE_CH_STATUS_REG_ADDR_RX_L ;
 int WCN36XX_DXE_CTRL_RX_H ;
 int WCN36XX_DXE_CTRL_RX_L ;
 int WCN36XX_DXE_INT_CH1_MASK ;
 int WCN36XX_DXE_INT_CH3_MASK ;
 int WCN36XX_DXE_INT_SRC_RAW_REG ;
 int WCN36XX_INT_MASK_CHAN_RX_H ;
 int WCN36XX_INT_MASK_CHAN_RX_L ;
 int wcn36xx_dxe_read_register (struct wcn36xx*,int ,int*) ;
 int wcn36xx_rx_handle_packets (struct wcn36xx*,int *,int ,int,int ,int ) ;
 int wcn36xx_warn (char*) ;

void wcn36xx_dxe_rx_frame(struct wcn36xx *wcn)
{
 int int_src;

 wcn36xx_dxe_read_register(wcn, WCN36XX_DXE_INT_SRC_RAW_REG, &int_src);


 if (int_src & WCN36XX_DXE_INT_CH1_MASK)
  wcn36xx_rx_handle_packets(wcn, &wcn->dxe_rx_l_ch,
       WCN36XX_DXE_CTRL_RX_L,
       WCN36XX_DXE_INT_CH1_MASK,
       WCN36XX_INT_MASK_CHAN_RX_L,
       WCN36XX_DXE_CH_STATUS_REG_ADDR_RX_L);


 if (int_src & WCN36XX_DXE_INT_CH3_MASK)
  wcn36xx_rx_handle_packets(wcn, &wcn->dxe_rx_h_ch,
       WCN36XX_DXE_CTRL_RX_H,
       WCN36XX_DXE_INT_CH3_MASK,
       WCN36XX_INT_MASK_CHAN_RX_H,
       WCN36XX_DXE_CH_STATUS_REG_ADDR_RX_H);

 if (!int_src)
  wcn36xx_warn("No DXE interrupt pending\n");
}
