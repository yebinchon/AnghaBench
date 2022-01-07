
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct rain {scalar_t__ buf_len; unsigned char* buf; size_t buf_wr_idx; int work; int buf_lock; int dev; } ;
typedef int irqreturn_t ;


 scalar_t__ DATA_SIZE ;
 int IRQ_HANDLED ;
 int dev_warn_once (int ,char*) ;
 int schedule_work (int *) ;
 struct rain* serio_get_drvdata (struct serio*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t rain_interrupt(struct serio *serio, unsigned char data,
        unsigned int flags)
{
 struct rain *rain = serio_get_drvdata(serio);

 if (rain->buf_len == DATA_SIZE) {
  dev_warn_once(rain->dev, "buffer overflow\n");
  return IRQ_HANDLED;
 }
 spin_lock(&rain->buf_lock);
 rain->buf_len++;
 rain->buf[rain->buf_wr_idx] = data;
 rain->buf_wr_idx = (rain->buf_wr_idx + 1) & 0xff;
 spin_unlock(&rain->buf_lock);
 schedule_work(&rain->work);
 return IRQ_HANDLED;
}
