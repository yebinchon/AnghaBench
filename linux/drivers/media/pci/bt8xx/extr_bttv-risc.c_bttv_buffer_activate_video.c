
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bttv_buffer_set {TYPE_2__* bottom; int frame_irq; TYPE_2__* top; int top_irq; } ;
struct bttv {int dummy; } ;
struct TYPE_6__ {scalar_t__ next; } ;
struct TYPE_4__ {TYPE_3__ queue; void* state; } ;
struct TYPE_5__ {int btformat; int btswap; int bottom; int geo; TYPE_1__ vb; int top; } ;


 int BT848_COLOR_CTL ;
 int BT848_COLOR_FMT ;
 int RISC_SLOT_E_FIELD ;
 int RISC_SLOT_O_FIELD ;
 void* VIDEOBUF_ACTIVE ;
 int btaor (int,int,int ) ;
 int bttv_apply_geo (struct bttv*,int *,int) ;
 int bttv_risc_hook (struct bttv*,int ,int *,int ) ;
 int list_del (TYPE_3__*) ;

int
bttv_buffer_activate_video(struct bttv *btv,
      struct bttv_buffer_set *set)
{

 if (((void*)0) != set->top && ((void*)0) != set->bottom) {
  if (set->top == set->bottom) {
   set->top->vb.state = VIDEOBUF_ACTIVE;
   if (set->top->vb.queue.next)
    list_del(&set->top->vb.queue);
  } else {
   set->top->vb.state = VIDEOBUF_ACTIVE;
   set->bottom->vb.state = VIDEOBUF_ACTIVE;
   if (set->top->vb.queue.next)
    list_del(&set->top->vb.queue);
   if (set->bottom->vb.queue.next)
    list_del(&set->bottom->vb.queue);
  }
  bttv_apply_geo(btv, &set->top->geo, 1);
  bttv_apply_geo(btv, &set->bottom->geo,0);
  bttv_risc_hook(btv, RISC_SLOT_O_FIELD, &set->top->top,
          set->top_irq);
  bttv_risc_hook(btv, RISC_SLOT_E_FIELD, &set->bottom->bottom,
          set->frame_irq);
  btaor((set->top->btformat & 0xf0) | (set->bottom->btformat & 0x0f),
        ~0xff, BT848_COLOR_FMT);
  btaor((set->top->btswap & 0x0a) | (set->bottom->btswap & 0x05),
        ~0x0f, BT848_COLOR_CTL);
 } else if (((void*)0) != set->top) {
  set->top->vb.state = VIDEOBUF_ACTIVE;
  if (set->top->vb.queue.next)
   list_del(&set->top->vb.queue);
  bttv_apply_geo(btv, &set->top->geo,1);
  bttv_apply_geo(btv, &set->top->geo,0);
  bttv_risc_hook(btv, RISC_SLOT_O_FIELD, &set->top->top,
          set->frame_irq);
  bttv_risc_hook(btv, RISC_SLOT_E_FIELD, ((void*)0), 0);
  btaor(set->top->btformat & 0xff, ~0xff, BT848_COLOR_FMT);
  btaor(set->top->btswap & 0x0f, ~0x0f, BT848_COLOR_CTL);
 } else if (((void*)0) != set->bottom) {
  set->bottom->vb.state = VIDEOBUF_ACTIVE;
  if (set->bottom->vb.queue.next)
   list_del(&set->bottom->vb.queue);
  bttv_apply_geo(btv, &set->bottom->geo,1);
  bttv_apply_geo(btv, &set->bottom->geo,0);
  bttv_risc_hook(btv, RISC_SLOT_O_FIELD, ((void*)0), 0);
  bttv_risc_hook(btv, RISC_SLOT_E_FIELD, &set->bottom->bottom,
          set->frame_irq);
  btaor(set->bottom->btformat & 0xff, ~0xff, BT848_COLOR_FMT);
  btaor(set->bottom->btswap & 0x0f, ~0x0f, BT848_COLOR_CTL);
 } else {
  bttv_risc_hook(btv, RISC_SLOT_O_FIELD, ((void*)0), 0);
  bttv_risc_hook(btv, RISC_SLOT_E_FIELD, ((void*)0), 0);
 }
 return 0;
}
