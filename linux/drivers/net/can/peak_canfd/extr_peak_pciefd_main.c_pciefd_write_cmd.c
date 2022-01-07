
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct peak_canfd_priv {scalar_t__ cmd_buffer; } ;
struct pciefd_can {TYPE_1__* board; } ;
struct TYPE_2__ {int cmd_lock; } ;


 int PCIEFD_REG_CAN_CMD_PORT_H ;
 int PCIEFD_REG_CAN_CMD_PORT_L ;
 int pciefd_can_writereg (struct pciefd_can*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pciefd_write_cmd(struct peak_canfd_priv *ucan)
{
 struct pciefd_can *priv = (struct pciefd_can *)ucan;
 unsigned long flags;


 spin_lock_irqsave(&priv->board->cmd_lock, flags);

 pciefd_can_writereg(priv, *(u32 *)ucan->cmd_buffer,
       PCIEFD_REG_CAN_CMD_PORT_L);
 pciefd_can_writereg(priv, *(u32 *)(ucan->cmd_buffer + 4),
       PCIEFD_REG_CAN_CMD_PORT_H);

 spin_unlock_irqrestore(&priv->board->cmd_lock, flags);

 return 0;
}
