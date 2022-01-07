
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int on; int off; } ;


 int UART_MCR ;
 TYPE_1__* hardware ;
 int soutp (int ,int ) ;
 scalar_t__ txsense ;
 size_t type ;

__attribute__((used)) static void on(void)
{
 if (txsense)
  soutp(UART_MCR, hardware[type].off);
 else
  soutp(UART_MCR, hardware[type].on);
}
