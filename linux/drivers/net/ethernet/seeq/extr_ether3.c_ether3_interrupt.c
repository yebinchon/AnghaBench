
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
typedef unsigned int irqreturn_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;


 int CMD_ACKINTRX ;
 int CMD_ACKINTTX ;
 int DEBUG_INT ;
 unsigned int IRQ_HANDLED ;
 unsigned int IRQ_NONE ;
 int REG_COMMAND ;
 int REG_STATUS ;
 unsigned int STAT_INTRX ;
 unsigned int STAT_INTTX ;
 unsigned int ether3_inw (int ) ;
 int ether3_outw (int,int ) ;
 int ether3_rx (struct net_device*,int) ;
 int ether3_tx (struct net_device*) ;
 int net_debug ;
 int printk (char*,...) ;
 TYPE_2__* priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t
ether3_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 unsigned int status, handled = IRQ_NONE;






 status = ether3_inw(REG_STATUS);

 if (status & STAT_INTRX) {
  ether3_outw(CMD_ACKINTRX | priv(dev)->regs.command, REG_COMMAND);
  ether3_rx(dev, 12);
  handled = IRQ_HANDLED;
 }

 if (status & STAT_INTTX) {
  ether3_outw(CMD_ACKINTTX | priv(dev)->regs.command, REG_COMMAND);
  ether3_tx(dev);
  handled = IRQ_HANDLED;
 }





 return handled;
}
