
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u32 ;
struct pciefd_can {int rx_dma_laddr; } ;


 scalar_t__ const CANFD_CTL_RST_BIT ;
 scalar_t__ const CANFD_CTL_UNC_BIT ;
 int PCIEFD_REG_CAN_RX_CTL_CLR ;
 int PCIEFD_REG_CAN_RX_CTL_SET ;
 int PCIEFD_REG_CAN_RX_DMA_ADDR_H ;
 int PCIEFD_REG_CAN_RX_DMA_ADDR_L ;
 int pciefd_can_writereg (struct pciefd_can*,scalar_t__ const,int ) ;

__attribute__((used)) static void pciefd_can_setup_rx_dma(struct pciefd_can *priv)
{



 const u32 dma_addr_h = 0;



 pciefd_can_writereg(priv, CANFD_CTL_RST_BIT, PCIEFD_REG_CAN_RX_CTL_SET);


 pciefd_can_writereg(priv, (u32)priv->rx_dma_laddr,
       PCIEFD_REG_CAN_RX_DMA_ADDR_L);
 pciefd_can_writereg(priv, dma_addr_h, PCIEFD_REG_CAN_RX_DMA_ADDR_H);


 pciefd_can_writereg(priv, CANFD_CTL_UNC_BIT, PCIEFD_REG_CAN_RX_CTL_CLR);
}
