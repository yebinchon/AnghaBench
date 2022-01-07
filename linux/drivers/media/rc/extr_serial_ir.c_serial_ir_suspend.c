
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
typedef int pm_message_t ;


 int UART_IER ;
 int UART_IER_MSI ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IER_THRI ;
 int UART_IIR ;
 int UART_LCR ;
 int UART_LCR_DLAB ;
 int UART_LSR ;
 int UART_MSR ;
 int UART_RX ;
 int sinp (int ) ;
 int soutp (int ,int) ;

__attribute__((used)) static int serial_ir_suspend(struct platform_device *dev,
        pm_message_t state)
{

 soutp(UART_LCR, sinp(UART_LCR) & (~UART_LCR_DLAB));


 soutp(UART_IER, sinp(UART_IER) &
       (~(UART_IER_MSI | UART_IER_RLSI | UART_IER_THRI | UART_IER_RDI)));


 sinp(UART_LSR);
 sinp(UART_RX);
 sinp(UART_IIR);
 sinp(UART_MSR);

 return 0;
}
