
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MENELAUS_INT_ACK1 ;
 int MENELAUS_INT_ACK2 ;
 int menelaus_write_reg (int ,int) ;

__attribute__((used)) static int menelaus_ack_irq(int irq)
{
 if (irq > 7)
  return menelaus_write_reg(MENELAUS_INT_ACK2, 1 << (irq - 8));
 else
  return menelaus_write_reg(MENELAUS_INT_ACK1, 1 << irq);
}
