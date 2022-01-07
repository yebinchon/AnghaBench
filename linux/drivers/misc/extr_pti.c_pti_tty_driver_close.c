
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; } ;
struct file {int dummy; } ;


 int tty_port_close (int ,struct tty_struct*,struct file*) ;

__attribute__((used)) static void pti_tty_driver_close(struct tty_struct *tty, struct file *filp)
{
 tty_port_close(tty->port, tty, filp);
}
