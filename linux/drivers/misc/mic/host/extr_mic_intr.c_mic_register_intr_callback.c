
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct mic_intr_cb {int cb_id; int list; void* data; void* thread_fn; void* handler; } ;
struct TYPE_2__ {int mic_thread_lock; int mic_intr_lock; int * cb_list; int cb_ida; } ;
struct mic_device {TYPE_1__ irq_info; } ;
typedef void* irq_handler_t ;


 int ENOMEM ;
 struct mic_intr_cb* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct mic_intr_cb*) ;
 struct mic_intr_cb* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct mic_intr_cb *mic_register_intr_callback(struct mic_device *mdev,
   u8 idx, irq_handler_t handler, irq_handler_t thread_fn,
   void *data)
{
 struct mic_intr_cb *intr_cb;
 unsigned long flags;
 int rc;
 intr_cb = kmalloc(sizeof(*intr_cb), GFP_KERNEL);

 if (!intr_cb)
  return ERR_PTR(-ENOMEM);

 intr_cb->handler = handler;
 intr_cb->thread_fn = thread_fn;
 intr_cb->data = data;
 intr_cb->cb_id = ida_simple_get(&mdev->irq_info.cb_ida,
  0, 0, GFP_KERNEL);
 if (intr_cb->cb_id < 0) {
  rc = intr_cb->cb_id;
  goto ida_fail;
 }

 spin_lock(&mdev->irq_info.mic_thread_lock);
 spin_lock_irqsave(&mdev->irq_info.mic_intr_lock, flags);
 list_add_tail(&intr_cb->list, &mdev->irq_info.cb_list[idx]);
 spin_unlock_irqrestore(&mdev->irq_info.mic_intr_lock, flags);
 spin_unlock(&mdev->irq_info.mic_thread_lock);

 return intr_cb;
ida_fail:
 kfree(intr_cb);
 return ERR_PTR(rc);
}
