
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* curr; } ;
struct saa7134_dev {int field; int slock; TYPE_2__ video_q; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_4__ {int top_seen; } ;


 int V4L2_FIELD_BOTTOM ;
 scalar_t__ V4L2_FIELD_HAS_BOTH (int) ;
 int V4L2_FIELD_TOP ;
 int VB2_BUF_STATE_DONE ;
 int saa7134_buffer_finish (struct saa7134_dev*,TYPE_2__*,int ) ;
 int saa7134_buffer_next (struct saa7134_dev*,TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void saa7134_irq_video_done(struct saa7134_dev *dev, unsigned long status)
{
 enum v4l2_field field;

 spin_lock(&dev->slock);
 if (dev->video_q.curr) {
  field = dev->field;
  if (V4L2_FIELD_HAS_BOTH(field)) {

   if ((status & 0x10) == 0x00) {
    dev->video_q.curr->top_seen = 1;
    goto done;
   }
   if (!dev->video_q.curr->top_seen)
    goto done;
  } else if (field == V4L2_FIELD_TOP) {
   if ((status & 0x10) != 0x10)
    goto done;
  } else if (field == V4L2_FIELD_BOTTOM) {
   if ((status & 0x10) != 0x00)
    goto done;
  }
  saa7134_buffer_finish(dev, &dev->video_q, VB2_BUF_STATE_DONE);
 }
 saa7134_buffer_next(dev, &dev->video_q);

 done:
 spin_unlock(&dev->slock);
}
