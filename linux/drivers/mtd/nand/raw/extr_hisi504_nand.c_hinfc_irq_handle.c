
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinfc_host {unsigned int irq_status; int cmd_complete; } ;
typedef int irqreturn_t ;


 int HINFC504_INTCLR ;
 int HINFC504_INTCLR_CE ;
 int HINFC504_INTCLR_DMA ;
 int HINFC504_INTCLR_UE ;
 int HINFC504_INTS ;
 unsigned int HINFC504_INTS_CE ;
 unsigned int HINFC504_INTS_DMA ;
 unsigned int HINFC504_INTS_UE ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 unsigned int hinfc_read (struct hinfc_host*,int ) ;
 int hinfc_write (struct hinfc_host*,int ,int ) ;

__attribute__((used)) static irqreturn_t hinfc_irq_handle(int irq, void *devid)
{
 struct hinfc_host *host = devid;
 unsigned int flag;

 flag = hinfc_read(host, HINFC504_INTS);

 host->irq_status |= flag;

 if (flag & HINFC504_INTS_DMA) {
  hinfc_write(host, HINFC504_INTCLR_DMA, HINFC504_INTCLR);
  complete(&host->cmd_complete);
 } else if (flag & HINFC504_INTS_CE) {
  hinfc_write(host, HINFC504_INTCLR_CE, HINFC504_INTCLR);
 } else if (flag & HINFC504_INTS_UE) {
  hinfc_write(host, HINFC504_INTCLR_UE, HINFC504_INTCLR);
 }

 return IRQ_HANDLED;
}
