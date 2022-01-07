
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rc_dev {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int lastkt; } ;


 int UART_IER ;
 int UART_IER_MSI ;
 int UART_LCR ;
 int UART_LCR_DLAB ;
 TYPE_2__* hardware ;
 int ktime_get () ;
 TYPE_1__ serial_ir ;
 int sinp (int ) ;
 int soutp (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t type ;

__attribute__((used)) static int serial_ir_open(struct rc_dev *rcdev)
{
 unsigned long flags;


 serial_ir.lastkt = ktime_get();

 spin_lock_irqsave(&hardware[type].lock, flags);


 soutp(UART_LCR, sinp(UART_LCR) & (~UART_LCR_DLAB));

 soutp(UART_IER, sinp(UART_IER) | UART_IER_MSI);

 spin_unlock_irqrestore(&hardware[type].lock, flags);

 return 0;
}
