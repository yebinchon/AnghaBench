
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int board; int sd_ir; } ;
 int PCI_MSK_AV_CORE ;
 int PCI_MSK_IR ;
 int cx23885_irq_add_enable (struct cx23885_dev*,int ) ;

void cx23885_ir_pci_int_enable(struct cx23885_dev *dev)
{
 switch (dev->board) {
 case 136:
 case 134:
 case 135:
  if (dev->sd_ir)
   cx23885_irq_add_enable(dev, PCI_MSK_IR);
  break;
 case 130:
 case 129:
 case 137:
 case 133:
 case 132:
 case 131:
 case 140:
 case 139:
 case 142:
 case 128:
 case 143:
 case 141:
 case 138:
  if (dev->sd_ir)
   cx23885_irq_add_enable(dev, PCI_MSK_AV_CORE);
  break;
 }
}
