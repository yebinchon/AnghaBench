
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int state; } ;
struct peak_canfd_priv {TYPE_2__ can; } ;
struct TYPE_4__ {TYPE_3__* ndev; } ;
struct pciefd_can {TYPE_1__ ucan; int pucan_cmd; } ;
struct TYPE_6__ {int irq; } ;


 int CANFD_CTL_IEN_BIT ;
 int CANFD_CTL_IRQ_CL_DEF ;
 int CANFD_CTL_IRQ_TL_DEF ;
 int CANFD_CTL_RST_BIT ;
 int CANFD_MISC_TS_RST ;
 int CAN_STATE_BUS_OFF ;
 int IRQF_SHARED ;
 int PCIEFD_DRV_NAME ;
 int PCIEFD_REG_CAN_MISC ;
 int PCIEFD_REG_CAN_RX_CTL_CLR ;
 int PCIEFD_REG_CAN_RX_CTL_SET ;
 int PCIEFD_REG_CAN_RX_CTL_WRT ;


 int pciefd_can_ack_rx_dma (struct pciefd_can*) ;
 int pciefd_can_setup_rx_dma (struct pciefd_can*) ;
 int pciefd_can_writereg (struct pciefd_can*,int,int ) ;
 int pciefd_irq_handler ;
 int pucan_cmd_get_opcode (int *) ;
 int request_irq (int ,int ,int ,int ,struct pciefd_can*) ;

__attribute__((used)) static int pciefd_pre_cmd(struct peak_canfd_priv *ucan)
{
 struct pciefd_can *priv = (struct pciefd_can *)ucan;
 u16 cmd = pucan_cmd_get_opcode(&priv->pucan_cmd);
 int err;


 switch (cmd) {
 case 128:
 case 129:

  if (ucan->can.state == CAN_STATE_BUS_OFF)
   break;


  err = request_irq(priv->ucan.ndev->irq,
      pciefd_irq_handler,
      IRQF_SHARED,
      PCIEFD_DRV_NAME,
      priv);
  if (err)
   return err;


  pciefd_can_setup_rx_dma(priv);


  pciefd_can_writereg(priv, (CANFD_CTL_IRQ_TL_DEF) << 8 |
        CANFD_CTL_IRQ_CL_DEF,
        PCIEFD_REG_CAN_RX_CTL_WRT);


  pciefd_can_writereg(priv, CANFD_CTL_RST_BIT,
        PCIEFD_REG_CAN_RX_CTL_CLR);


  pciefd_can_writereg(priv, !CANFD_MISC_TS_RST,
        PCIEFD_REG_CAN_MISC);


  pciefd_can_ack_rx_dma(priv);


  pciefd_can_writereg(priv, CANFD_CTL_IEN_BIT,
        PCIEFD_REG_CAN_RX_CTL_SET);


  break;
 default:
  break;
 }

 return 0;
}
