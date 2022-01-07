
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int lastkt; } ;


 int UART_IER ;
 int UART_IER_MSI ;
 TYPE_2__* hardware ;
 int hardware_init_port () ;
 int ktime_get () ;
 int off () ;
 TYPE_1__ serial_ir ;
 int sinp (int ) ;
 int soutp (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t type ;

__attribute__((used)) static int serial_ir_resume(struct platform_device *dev)
{
 unsigned long flags;
 int result;

 result = hardware_init_port();
 if (result < 0)
  return result;

 spin_lock_irqsave(&hardware[type].lock, flags);

 serial_ir.lastkt = ktime_get();
 soutp(UART_IER, sinp(UART_IER) | UART_IER_MSI);
 off();

 spin_unlock_irqrestore(&hardware[type].lock, flags);

 return 0;
}
