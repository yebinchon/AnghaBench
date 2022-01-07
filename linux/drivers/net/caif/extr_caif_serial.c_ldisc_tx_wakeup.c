
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ser_device* disc_data; } ;
struct ser_device {struct tty_struct* tty; } ;


 int BUG_ON (int ) ;
 int WARN_ON (int) ;
 int handle_tx (struct ser_device*) ;

__attribute__((used)) static void ldisc_tx_wakeup(struct tty_struct *tty)
{
 struct ser_device *ser;

 ser = tty->disc_data;
 BUG_ON(ser == ((void*)0));
 WARN_ON(ser->tty != tty);
 handle_tx(ser);
}
