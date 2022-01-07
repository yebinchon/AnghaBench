
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PULSE ;
 unsigned long TIME_CONST ;
 scalar_t__ UART_LSR ;
 int UART_LSR_THRE ;
 scalar_t__ UART_TX ;
 int inb (scalar_t__) ;
 scalar_t__ io ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void send_pulse(unsigned long len)
{
 long bytes_out = len / TIME_CONST;

 if (bytes_out == 0)
  bytes_out++;

 while (bytes_out--) {
  outb(PULSE, io + UART_TX);

  while (!(inb(io + UART_LSR) & UART_LSR_THRE))
   ;
 }
}
