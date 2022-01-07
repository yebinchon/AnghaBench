
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef void* u16 ;
struct ctrl_queue {int len; void (* callback ) (struct catc*,struct ctrl_queue*) ;void* buf; void* index; void* value; void* request; void* dir; } ;
struct catc {int ctrl_head; int ctrl_tail; int ctrl_lock; int flags; TYPE_1__* usbdev; struct ctrl_queue* ctrl_queue; } ;
struct TYPE_2__ {int dev; } ;


 int CTRL_QUEUE ;
 int CTRL_RUNNING ;
 int catc_ctrl_run (struct catc*) ;
 int dev_err (int *,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int catc_ctrl_async(struct catc *catc, u8 dir, u8 request, u16 value,
 u16 index, void *buf, int len, void (*callback)(struct catc *catc, struct ctrl_queue *q))
{
 struct ctrl_queue *q;
 int retval = 0;
 unsigned long flags;

 spin_lock_irqsave(&catc->ctrl_lock, flags);

 q = catc->ctrl_queue + catc->ctrl_head;

 q->dir = dir;
 q->request = request;
 q->value = value;
 q->index = index;
 q->buf = buf;
 q->len = len;
 q->callback = callback;

 catc->ctrl_head = (catc->ctrl_head + 1) & (CTRL_QUEUE - 1);

 if (catc->ctrl_head == catc->ctrl_tail) {
  dev_err(&catc->usbdev->dev, "ctrl queue full\n");
  catc->ctrl_tail = (catc->ctrl_tail + 1) & (CTRL_QUEUE - 1);
  retval = -1;
 }

 if (!test_and_set_bit(CTRL_RUNNING, &catc->flags))
  catc_ctrl_run(catc);

 spin_unlock_irqrestore(&catc->ctrl_lock, flags);

 return retval;
}
