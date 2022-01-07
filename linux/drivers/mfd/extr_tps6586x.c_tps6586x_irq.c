
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u32 ;
struct tps6586x {int irq_en; int irq_domain; int dev; } ;
typedef int irqreturn_t ;
typedef int acks ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TPS6586X_INT_ACK1 ;
 int __ffs (int) ;
 int dev_err (int ,char*) ;
 int handle_nested_irq (int ) ;
 int irq_find_mapping (int ,int) ;
 int le32_to_cpu (int) ;
 int tps6586x_reads (int ,int ,int,int *) ;

__attribute__((used)) static irqreturn_t tps6586x_irq(int irq, void *data)
{
 struct tps6586x *tps6586x = data;
 u32 acks;
 int ret = 0;

 ret = tps6586x_reads(tps6586x->dev, TPS6586X_INT_ACK1,
        sizeof(acks), (uint8_t *)&acks);

 if (ret < 0) {
  dev_err(tps6586x->dev, "failed to read interrupt status\n");
  return IRQ_NONE;
 }

 acks = le32_to_cpu(acks);

 while (acks) {
  int i = __ffs(acks);

  if (tps6586x->irq_en & (1 << i))
   handle_nested_irq(
    irq_find_mapping(tps6586x->irq_domain, i));

  acks &= ~(1 << i);
 }

 return IRQ_HANDLED;
}
