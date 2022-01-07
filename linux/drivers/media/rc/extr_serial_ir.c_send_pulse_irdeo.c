
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ktime_t ;
struct TYPE_2__ {int duty_cycle; } ;


 int UART_LSR ;
 int UART_LSR_TEMT ;
 int UART_LSR_THRE ;
 int UART_TX ;
 TYPE_1__ serial_ir ;
 int sinp (int ) ;
 int soutp (int ,unsigned char) ;

__attribute__((used)) static void send_pulse_irdeo(unsigned int length, ktime_t target)
{
 long rawbits;
 int i;
 unsigned char output;
 unsigned char chunk, shifted;


 rawbits = length * 1152 / 10000;
 if (serial_ir.duty_cycle > 50)
  chunk = 3;
 else
  chunk = 1;
 for (i = 0, output = 0x7f; rawbits > 0; rawbits -= 3) {
  shifted = chunk << (i * 3);
  shifted >>= 1;
  output &= (~shifted);
  i++;
  if (i == 3) {
   soutp(UART_TX, output);
   while (!(sinp(UART_LSR) & UART_LSR_THRE))
    ;
   output = 0x7f;
   i = 0;
  }
 }
 if (i != 0) {
  soutp(UART_TX, output);
  while (!(sinp(UART_LSR) & UART_LSR_TEMT))
   ;
 }
}
