
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_riscmem {int dma; int cpu; int size; } ;
struct cx23885_dev {int pci; } ;
struct cx23885_buffer {struct cx23885_riscmem risc; } ;


 int BUG_ON (int ) ;
 int in_interrupt () ;
 int pci_free_consistent (int ,int ,int ,int ) ;

void cx23885_free_buffer(struct cx23885_dev *dev, struct cx23885_buffer *buf)
{
 struct cx23885_riscmem *risc = &buf->risc;

 BUG_ON(in_interrupt());
 pci_free_consistent(dev->pci, risc->size, risc->cpu, risc->dma);
}
