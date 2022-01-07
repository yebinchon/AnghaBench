
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int numdisabled; int disabled; } ;
struct tun_file {int next; struct tun_struct* detached; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void tun_disable_queue(struct tun_struct *tun, struct tun_file *tfile)
{
 tfile->detached = tun;
 list_add_tail(&tfile->next, &tun->disabled);
 ++tun->numdisabled;
}
