
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx25821_dev {int pci; } ;
struct TYPE_2__ {scalar_t__ size; int dma; int cpu; } ;
struct cx25821_buffer {TYPE_1__ risc; } ;


 int BUG_ON (int ) ;
 scalar_t__ WARN_ON (int) ;
 int in_interrupt () ;
 int memset (TYPE_1__*,int ,int) ;
 int pci_free_consistent (int ,scalar_t__,int ,int ) ;

void cx25821_free_buffer(struct cx25821_dev *dev, struct cx25821_buffer *buf)
{
 BUG_ON(in_interrupt());
 if (WARN_ON(buf->risc.size == 0))
  return;
 pci_free_consistent(dev->pci,
   buf->risc.size, buf->risc.cpu, buf->risc.dma);
 memset(&buf->risc, 0, sizeof(buf->risc));
}
