
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct saa7134_dmaqueue {scalar_t__ curr; struct saa7134_dev* dev; } ;
struct saa7134_dev {int slock; } ;


 int SAA7134_REGION_ENABLE ;
 int VB2_BUF_STATE_ERROR ;
 int core_dbg (char*,scalar_t__) ;
 struct saa7134_dmaqueue* from_timer (int ,struct timer_list*,int ) ;
 struct saa7134_dmaqueue* q ;
 int saa7134_buffer_finish (struct saa7134_dev*,struct saa7134_dmaqueue*,int ) ;
 int saa7134_buffer_next (struct saa7134_dev*,struct saa7134_dmaqueue*) ;
 int saa_writeb (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timeout ;

void saa7134_buffer_timeout(struct timer_list *t)
{
 struct saa7134_dmaqueue *q = from_timer(q, t, timeout);
 struct saa7134_dev *dev = q->dev;
 unsigned long flags;

 spin_lock_irqsave(&dev->slock, flags);


 saa_writeb(SAA7134_REGION_ENABLE, 0x00);
 saa_writeb(SAA7134_REGION_ENABLE, 0x80);
 saa_writeb(SAA7134_REGION_ENABLE, 0x00);



 if (q->curr) {
  core_dbg("timeout on %p\n", q->curr);
  saa7134_buffer_finish(dev, q, VB2_BUF_STATE_ERROR);
 }
 saa7134_buffer_next(dev, q);
 spin_unlock_irqrestore(&dev->slock, flags);
}
