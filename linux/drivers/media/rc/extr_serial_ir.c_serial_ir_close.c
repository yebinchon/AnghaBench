
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int UART_IER ;
 int UART_IER_MSI ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IER_THRI ;
 int UART_LCR ;
 int UART_LCR_DLAB ;
 TYPE_1__* hardware ;
 int sinp (int ) ;
 int soutp (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t type ;

__attribute__((used)) static void serial_ir_close(struct rc_dev *rcdev)
{
 unsigned long flags;

 spin_lock_irqsave(&hardware[type].lock, flags);


 soutp(UART_LCR, sinp(UART_LCR) & (~UART_LCR_DLAB));


 soutp(UART_IER, sinp(UART_IER) &
       (~(UART_IER_MSI | UART_IER_RLSI | UART_IER_THRI | UART_IER_RDI)));
 spin_unlock_irqrestore(&hardware[type].lock, flags);
}
