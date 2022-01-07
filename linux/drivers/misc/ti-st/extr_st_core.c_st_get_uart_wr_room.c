
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct st_data_s {struct tty_struct* tty; } ;
struct TYPE_2__ {int (* write_room ) (struct tty_struct*) ;} ;


 int pr_err (char*) ;
 int stub1 (struct tty_struct*) ;
 scalar_t__ unlikely (int) ;

int st_get_uart_wr_room(struct st_data_s *st_gdata)
{
 struct tty_struct *tty;
 if (unlikely(st_gdata == ((void*)0) || st_gdata->tty == ((void*)0))) {
  pr_err("tty unavailable to perform write");
  return -1;
 }
 tty = st_gdata->tty;
 return tty->ops->write_room(tty);
}
