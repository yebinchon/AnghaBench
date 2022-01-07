
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvaser_pciefd {int nr_channels; scalar_t__ reg_base; int * can; TYPE_1__* pci; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KVASER_PCIEFD_IRQ_ALL_MSK ;
 scalar_t__ KVASER_PCIEFD_IRQ_REG ;
 int KVASER_PCIEFD_IRQ_SRB ;
 int dev_err (int *,char*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int kvaser_pciefd_receive_irq (struct kvaser_pciefd*) ;
 int kvaser_pciefd_transmit_irq (int ) ;

__attribute__((used)) static irqreturn_t kvaser_pciefd_irq_handler(int irq, void *dev)
{
 struct kvaser_pciefd *pcie = (struct kvaser_pciefd *)dev;
 u32 board_irq;
 int i;

 board_irq = ioread32(pcie->reg_base + KVASER_PCIEFD_IRQ_REG);

 if (!(board_irq & KVASER_PCIEFD_IRQ_ALL_MSK))
  return IRQ_NONE;

 if (board_irq & KVASER_PCIEFD_IRQ_SRB)
  kvaser_pciefd_receive_irq(pcie);

 for (i = 0; i < pcie->nr_channels; i++) {
  if (!pcie->can[i]) {
   dev_err(&pcie->pci->dev,
    "IRQ mask points to unallocated controller\n");
   break;
  }


  if (board_irq & (1 << i))
   kvaser_pciefd_transmit_irq(pcie->can[i]);
 }

 iowrite32(board_irq, pcie->reg_base + KVASER_PCIEFD_IRQ_REG);
 return IRQ_HANDLED;
}
