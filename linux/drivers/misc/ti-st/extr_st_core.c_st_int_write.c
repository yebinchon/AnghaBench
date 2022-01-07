
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct st_data_s {struct tty_struct* tty; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,unsigned char const*,int) ;} ;


 int DUMP_PREFIX_NONE ;
 int EINVAL ;
 int KERN_DEBUG ;
 int pr_err (char*) ;
 int print_hex_dump (int ,char*,int ,int,int,unsigned char const*,int,int ) ;
 int stub1 (struct tty_struct*,unsigned char const*,int) ;
 scalar_t__ unlikely (int) ;

int st_int_write(struct st_data_s *st_gdata,
 const unsigned char *data, int count)
{
 struct tty_struct *tty;
 if (unlikely(st_gdata == ((void*)0) || st_gdata->tty == ((void*)0))) {
  pr_err("tty unavailable to perform write");
  return -EINVAL;
 }
 tty = st_gdata->tty;




 return tty->ops->write(tty, data, count);

}
