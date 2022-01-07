
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pciefd_can {int dummy; } ;


 int CANFD_CTL_RST_BIT ;
 int PCIEFD_REG_CAN_RX_CTL_SET ;
 int PCIEFD_REG_CAN_RX_DMA_ADDR_H ;
 int PCIEFD_REG_CAN_RX_DMA_ADDR_L ;
 int pciefd_can_writereg (struct pciefd_can*,int ,int ) ;

__attribute__((used)) static void pciefd_can_clear_rx_dma(struct pciefd_can *priv)
{

 pciefd_can_writereg(priv, CANFD_CTL_RST_BIT, PCIEFD_REG_CAN_RX_CTL_SET);


 pciefd_can_writereg(priv, 0, PCIEFD_REG_CAN_RX_DMA_ADDR_L);
 pciefd_can_writereg(priv, 0, PCIEFD_REG_CAN_RX_DMA_ADDR_H);
}
