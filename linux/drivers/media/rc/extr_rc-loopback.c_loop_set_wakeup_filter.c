
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_scancode_filter {int data; int mask; } ;
struct rc_dev {int wakeup_protocol; } ;
struct ir_raw_event {int dummy; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ir_raw_encode_scancode (int ,int ,struct ir_raw_event*,unsigned int const) ;
 int ir_raw_event_handle (struct rc_dev*) ;
 int ir_raw_event_store (struct rc_dev*,struct ir_raw_event*) ;
 int kfree (struct ir_raw_event*) ;
 struct ir_raw_event* kmalloc_array (unsigned int const,int,int ) ;

__attribute__((used)) static int loop_set_wakeup_filter(struct rc_dev *dev,
      struct rc_scancode_filter *sc)
{
 static const unsigned int max = 512;
 struct ir_raw_event *raw;
 int ret;
 int i;


 if (!sc->mask)
  return 0;


 raw = kmalloc_array(max, sizeof(*raw), GFP_KERNEL);
 if (!raw)
  return -ENOMEM;

 ret = ir_raw_encode_scancode(dev->wakeup_protocol, sc->data, raw, max);

 if (ret == -ENOBUFS)
  ret = max;
 if (ret >= 0) {

  for (i = 0; i < ret; ++i)
   ir_raw_event_store(dev, &raw[i]);
  ir_raw_event_handle(dev);

  ret = 0;
 }

 kfree(raw);

 return ret;
}
