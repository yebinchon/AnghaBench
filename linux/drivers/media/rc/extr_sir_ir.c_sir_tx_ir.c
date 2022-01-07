
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int dummy; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int send_pulse (unsigned int) ;
 int send_space (unsigned int) ;

__attribute__((used)) static int sir_tx_ir(struct rc_dev *dev, unsigned int *tx_buf,
       unsigned int count)
{
 unsigned long flags;
 int i;

 local_irq_save(flags);
 for (i = 0; i < count;) {
  if (tx_buf[i])
   send_pulse(tx_buf[i]);
  i++;
  if (i >= count)
   break;
  if (tx_buf[i])
   send_space(tx_buf[i]);
  i++;
 }
 local_irq_restore(flags);

 return count;
}
