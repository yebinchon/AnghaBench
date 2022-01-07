
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int numdisabled; } ;
struct tun_file {int next; struct tun_struct* detached; } ;


 int list_del_init (int *) ;

__attribute__((used)) static struct tun_struct *tun_enable_queue(struct tun_file *tfile)
{
 struct tun_struct *tun = tfile->detached;

 tfile->detached = ((void*)0);
 list_del_init(&tfile->next);
 --tun->numdisabled;
 return tun;
}
