
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENODEV ;
 int UART_DLL ;
 int UART_DLM ;
 int UART_FCR ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_IER ;
 int UART_IER_RDI ;
 int UART_LCR ;
 int UART_LCR_DLAB ;
 int UART_LCR_WLEN7 ;
 int UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_OUT2 ;
 int UART_MCR_RTS ;
 int hardware_lock ;
 int io ;
 int outb (int,int) ;
 int pr_err (char*) ;
 int sinp (int) ;
 int soutp (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int init_hardware(void)
{
 u8 scratch, scratch2, scratch3;
 unsigned long flags;

 spin_lock_irqsave(&hardware_lock, flags);





 scratch = sinp(UART_IER);
 soutp(UART_IER, 0);



 scratch2 = sinp(UART_IER) & 0x0f;
 soutp(UART_IER, 0x0f);



 scratch3 = sinp(UART_IER) & 0x0f;
 soutp(UART_IER, scratch);
 if (scratch2 != 0 || scratch3 != 0x0f) {

  spin_unlock_irqrestore(&hardware_lock, flags);
  pr_err("port existence test failed, cannot continue\n");
  return -ENODEV;
 }


 outb(0, io + UART_MCR);
 outb(0, io + UART_IER);


 outb(UART_LCR_DLAB | UART_LCR_WLEN7, io + UART_LCR);
 outb(1, io + UART_DLL); outb(0, io + UART_DLM);

 outb(UART_LCR_WLEN7, io + UART_LCR);

 outb(UART_FCR_ENABLE_FIFO, io + UART_FCR);


 outb(UART_IER_RDI, io + UART_IER);

 outb(UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2, io + UART_MCR);
 spin_unlock_irqrestore(&hardware_lock, flags);

 return 0;
}
