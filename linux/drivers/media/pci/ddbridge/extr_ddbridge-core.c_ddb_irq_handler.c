
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ddb {int dummy; } ;
typedef int irqreturn_t ;


 int INTERRUPT_ACK ;
 int INTERRUPT_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ddbreadl (struct ddb*,int ) ;
 int ddbwritel (struct ddb*,int,int ) ;
 int irq_handle_io (struct ddb*,int) ;
 int irq_handle_msg (struct ddb*,int) ;

irqreturn_t ddb_irq_handler(int irq, void *dev_id)
{
 struct ddb *dev = (struct ddb *)dev_id;
 u32 s = ddbreadl(dev, INTERRUPT_STATUS);
 int ret = IRQ_HANDLED;

 if (!s)
  return IRQ_NONE;
 do {
  if (s & 0x80000000)
   return IRQ_NONE;
  ddbwritel(dev, s, INTERRUPT_ACK);

  if (s & 0x0000000f)
   irq_handle_msg(dev, s);
  if (s & 0x0fffff00)
   irq_handle_io(dev, s);
 } while ((s = ddbreadl(dev, INTERRUPT_STATUS)));

 return ret;
}
