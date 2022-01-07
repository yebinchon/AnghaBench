
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pciefd_can {int irq_tag; scalar_t__ rx_dma_vaddr; } ;
typedef int __le32 ;


 int PCIEFD_REG_CAN_RX_CTL_ACK ;
 int le32_to_cpu (int ) ;
 int pciefd_can_writereg (struct pciefd_can*,int,int ) ;

__attribute__((used)) static void pciefd_can_ack_rx_dma(struct pciefd_can *priv)
{

 priv->irq_tag = le32_to_cpu(*(__le32 *)priv->rx_dma_vaddr);
 priv->irq_tag++;
 priv->irq_tag &= 0xf;


 pciefd_can_writereg(priv, priv->irq_tag, PCIEFD_REG_CAN_RX_CTL_ACK);
}
