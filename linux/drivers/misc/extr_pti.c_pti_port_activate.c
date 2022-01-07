
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct tty_port {TYPE_1__* tty; } ;
struct TYPE_2__ {scalar_t__ index; } ;


 scalar_t__ PTITTY_MINOR_START ;
 int console_start (int *) ;
 int pti_console ;

__attribute__((used)) static int pti_port_activate(struct tty_port *port, struct tty_struct *tty)
{
 if (port->tty->index == PTITTY_MINOR_START)
  console_start(&pti_console);
 return 0;
}
