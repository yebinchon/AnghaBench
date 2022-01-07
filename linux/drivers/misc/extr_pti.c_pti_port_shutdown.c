
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {TYPE_1__* tty; } ;
struct TYPE_2__ {scalar_t__ index; } ;


 scalar_t__ PTITTY_MINOR_START ;
 int console_stop (int *) ;
 int pti_console ;

__attribute__((used)) static void pti_port_shutdown(struct tty_port *port)
{
 if (port->tty->index == PTITTY_MINOR_START)
  console_stop(&pti_console);
}
