
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct slip* disc_data; } ;
struct slip {int tx_work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void slip_write_wakeup(struct tty_struct *tty)
{
 struct slip *sl = tty->disc_data;

 schedule_work(&sl->tx_work);
}
