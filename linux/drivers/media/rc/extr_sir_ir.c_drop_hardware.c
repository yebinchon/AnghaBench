
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UART_IER ;
 int hardware_lock ;
 scalar_t__ io ;
 int outb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void drop_hardware(void)
{
 unsigned long flags;

 spin_lock_irqsave(&hardware_lock, flags);


 outb(0, io + UART_IER);

 spin_unlock_irqrestore(&hardware_lock, flags);
}
