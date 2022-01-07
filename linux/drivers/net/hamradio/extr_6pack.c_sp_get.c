
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sixpack* disc_data; } ;
struct sixpack {int refcnt; } ;


 int disc_data_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int refcount_inc (int *) ;

__attribute__((used)) static struct sixpack *sp_get(struct tty_struct *tty)
{
 struct sixpack *sp;

 read_lock(&disc_data_lock);
 sp = tty->disc_data;
 if (sp)
  refcount_inc(&sp->refcnt);
 read_unlock(&disc_data_lock);

 return sp;
}
