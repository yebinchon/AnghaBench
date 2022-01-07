
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_timer {struct brcms_timer* next; struct brcms_timer* name; struct brcms_info* wl; } ;
struct brcms_info {struct brcms_timer* timers; } ;


 int brcms_del_timer (struct brcms_timer*) ;
 int kfree (struct brcms_timer*) ;

void brcms_free_timer(struct brcms_timer *t)
{
 struct brcms_info *wl = t->wl;
 struct brcms_timer *tmp;


 brcms_del_timer(t);

 if (wl->timers == t) {
  wl->timers = wl->timers->next;



  kfree(t);
  return;

 }

 tmp = wl->timers;
 while (tmp) {
  if (tmp->next == t) {
   tmp->next = t->next;



   kfree(t);
   return;
  }
  tmp = tmp->next;
 }

}
