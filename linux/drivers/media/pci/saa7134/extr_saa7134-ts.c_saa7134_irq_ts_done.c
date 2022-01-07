
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ curr; } ;
struct saa7134_dev {int ts_field; int slock; TYPE_1__ ts_q; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int V4L2_FIELD_TOP ;
 int VB2_BUF_STATE_DONE ;
 int saa7134_buffer_finish (struct saa7134_dev*,TYPE_1__*,int ) ;
 int saa7134_buffer_next (struct saa7134_dev*,TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void saa7134_irq_ts_done(struct saa7134_dev *dev, unsigned long status)
{
 enum v4l2_field field;

 spin_lock(&dev->slock);
 if (dev->ts_q.curr) {
  field = dev->ts_field;
  if (field != V4L2_FIELD_TOP) {
   if ((status & 0x100000) != 0x000000)
    goto done;
  } else {
   if ((status & 0x100000) != 0x100000)
    goto done;
  }
  saa7134_buffer_finish(dev, &dev->ts_q, VB2_BUF_STATE_DONE);
 }
 saa7134_buffer_next(dev,&dev->ts_q);

 done:
 spin_unlock(&dev->slock);
}
