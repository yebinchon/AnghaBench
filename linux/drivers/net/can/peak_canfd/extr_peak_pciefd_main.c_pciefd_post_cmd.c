
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int state; } ;
struct peak_canfd_priv {TYPE_3__ can; } ;
struct TYPE_5__ {TYPE_1__* ndev; } ;
struct pciefd_can {TYPE_2__ ucan; int board; int pucan_cmd; } ;
struct TYPE_4__ {int irq; } ;


 int CANFD_CTL_IEN_BIT ;
 int CAN_STATE_STOPPED ;
 int PCIEFD_REG_CAN_RX_CTL_CLR ;
 int PCIEFD_REG_SYS_VER1 ;

 int free_irq (int ,struct pciefd_can*) ;
 int pciefd_can_clear_rx_dma (struct pciefd_can*) ;
 int pciefd_can_clear_tx_dma (struct pciefd_can*) ;
 int pciefd_can_writereg (struct pciefd_can*,int ,int ) ;
 int pciefd_sys_readreg (int ,int ) ;
 int pucan_cmd_get_opcode (int *) ;

__attribute__((used)) static int pciefd_post_cmd(struct peak_canfd_priv *ucan)
{
 struct pciefd_can *priv = (struct pciefd_can *)ucan;
 u16 cmd = pucan_cmd_get_opcode(&priv->pucan_cmd);

 switch (cmd) {
 case 128:

  if (ucan->can.state == CAN_STATE_STOPPED)
   break;




  pciefd_can_writereg(priv, CANFD_CTL_IEN_BIT,
        PCIEFD_REG_CAN_RX_CTL_CLR);


  pciefd_can_clear_tx_dma(priv);
  pciefd_can_clear_rx_dma(priv);


  (void)pciefd_sys_readreg(priv->board, PCIEFD_REG_SYS_VER1);

  free_irq(priv->ucan.ndev->irq, priv);

  ucan->can.state = CAN_STATE_STOPPED;

  break;
 }

 return 0;
}
