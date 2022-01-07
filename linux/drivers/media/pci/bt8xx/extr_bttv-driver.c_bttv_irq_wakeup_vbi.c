
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int state; int done; int field_count; int ts; } ;
struct bttv_buffer {TYPE_1__ vb; } ;
struct bttv {int field_count; } ;


 int ktime_get_ns () ;
 int wake_up (int *) ;

__attribute__((used)) static void
bttv_irq_wakeup_vbi(struct bttv *btv, struct bttv_buffer *wakeup,
      unsigned int state)
{
 if (((void*)0) == wakeup)
  return;

 wakeup->vb.ts = ktime_get_ns();
 wakeup->vb.field_count = btv->field_count;
 wakeup->vb.state = state;
 wake_up(&wakeup->vb.done);
}
