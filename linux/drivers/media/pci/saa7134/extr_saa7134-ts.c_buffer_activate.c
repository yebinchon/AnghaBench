
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; } ;
struct saa7134_dev {scalar_t__ ts_field; int ts_started; TYPE_1__ ts_q; } ;
struct saa7134_buf {scalar_t__ top_seen; } ;


 int SAA7134_RS_BA1 (int) ;
 int SAA7134_RS_BA2 (int) ;
 scalar_t__ TS_BUFFER_TIMEOUT ;
 scalar_t__ V4L2_FIELD_BOTTOM ;
 scalar_t__ V4L2_FIELD_TOP ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int saa7134_buffer_base (struct saa7134_buf*) ;
 int saa7134_set_dmabits (struct saa7134_dev*) ;
 int saa7134_ts_start (struct saa7134_dev*) ;
 int saa_writel (int ,int ) ;
 int ts_dbg (char*,struct saa7134_buf*,...) ;

__attribute__((used)) static int buffer_activate(struct saa7134_dev *dev,
      struct saa7134_buf *buf,
      struct saa7134_buf *next)
{

 ts_dbg("buffer_activate [%p]", buf);
 buf->top_seen = 0;

 if (!dev->ts_started)
  dev->ts_field = V4L2_FIELD_TOP;

 if (((void*)0) == next)
  next = buf;
 if (V4L2_FIELD_TOP == dev->ts_field) {
  ts_dbg("- [top]     buf=%p next=%p\n", buf, next);
  saa_writel(SAA7134_RS_BA1(5),saa7134_buffer_base(buf));
  saa_writel(SAA7134_RS_BA2(5),saa7134_buffer_base(next));
  dev->ts_field = V4L2_FIELD_BOTTOM;
 } else {
  ts_dbg("- [bottom]  buf=%p next=%p\n", buf, next);
  saa_writel(SAA7134_RS_BA1(5),saa7134_buffer_base(next));
  saa_writel(SAA7134_RS_BA2(5),saa7134_buffer_base(buf));
  dev->ts_field = V4L2_FIELD_TOP;
 }


 saa7134_set_dmabits(dev);

 mod_timer(&dev->ts_q.timeout, jiffies+TS_BUFFER_TIMEOUT);

 if (!dev->ts_started)
  saa7134_ts_start(dev);

 return 0;
}
