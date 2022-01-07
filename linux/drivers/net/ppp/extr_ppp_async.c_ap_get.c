
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct asyncppp* disc_data; } ;
struct asyncppp {int refcnt; } ;


 int disc_data_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int refcount_inc (int *) ;

__attribute__((used)) static struct asyncppp *ap_get(struct tty_struct *tty)
{
 struct asyncppp *ap;

 read_lock(&disc_data_lock);
 ap = tty->disc_data;
 if (ap != ((void*)0))
  refcount_inc(&ap->refcnt);
 read_unlock(&disc_data_lock);
 return ap;
}
