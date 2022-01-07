
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_timer {void (* fn ) (void*) ;int name; struct brcms_timer* next; void* arg; struct brcms_info* wl; int dly_wrk; } ;
struct brcms_info {struct brcms_timer* timers; } ;


 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int _brcms_timer ;
 int kstrdup (char const*,int ) ;
 struct brcms_timer* kzalloc (int,int ) ;

struct brcms_timer *brcms_init_timer(struct brcms_info *wl,
         void (*fn) (void *arg),
         void *arg, const char *name)
{
 struct brcms_timer *t;

 t = kzalloc(sizeof(struct brcms_timer), GFP_ATOMIC);
 if (!t)
  return ((void*)0);

 INIT_DELAYED_WORK(&t->dly_wrk, _brcms_timer);
 t->wl = wl;
 t->fn = fn;
 t->arg = arg;
 t->next = wl->timers;
 wl->timers = t;





 return t;
}
