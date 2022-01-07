
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* curr; } ;
struct saa7134_dev {int slock; TYPE_2__ vbi_q; } ;
struct TYPE_4__ {int top_seen; } ;


 int VB2_BUF_STATE_DONE ;
 int saa7134_buffer_finish (struct saa7134_dev*,TYPE_2__*,int ) ;
 int saa7134_buffer_next (struct saa7134_dev*,TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void saa7134_irq_vbi_done(struct saa7134_dev *dev, unsigned long status)
{
 spin_lock(&dev->slock);
 if (dev->vbi_q.curr) {

  if ((status & 0x10) == 0x00) {
   dev->vbi_q.curr->top_seen = 1;
   goto done;
  }
  if (!dev->vbi_q.curr->top_seen)
   goto done;

  saa7134_buffer_finish(dev, &dev->vbi_q, VB2_BUF_STATE_DONE);
 }
 saa7134_buffer_next(dev, &dev->vbi_q);

 done:
 spin_unlock(&dev->slock);
}
