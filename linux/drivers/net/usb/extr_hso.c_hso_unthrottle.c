
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct hso_serial* driver_data; } ;
struct hso_serial {int unthrottle_tasklet; } ;


 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void hso_unthrottle(struct tty_struct *tty)
{
 struct hso_serial *serial = tty->driver_data;

 tasklet_hi_schedule(&serial->unthrottle_tasklet);
}
