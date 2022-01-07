
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct rc_scancode_filter {int data; int mask; } ;
struct rc_dev {int wakeup_protocol; } ;
struct ir_raw_event {scalar_t__ pulse; int duration; } ;


 unsigned int BUF_LEN_MASK ;
 unsigned int BUF_PULSE_BIT ;
 unsigned int DIV_ROUND_UP (int ,long) ;
 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int SAMPLE_PERIOD ;
 int WAKEUP_MAX_SIZE ;
 int ir_raw_encode_scancode (int ,int ,struct ir_raw_event*,int) ;
 int kfree (struct ir_raw_event*) ;
 struct ir_raw_event* kmalloc_array (int,int,int ) ;
 int nvt_write_wakeup_codes (struct rc_dev*,unsigned int*,int) ;

__attribute__((used)) static int nvt_ir_raw_set_wakeup_filter(struct rc_dev *dev,
     struct rc_scancode_filter *sc_filter)
{
 u8 buf_val;
 int i, ret, count;
 unsigned int val;
 struct ir_raw_event *raw;
 u8 wake_buf[WAKEUP_MAX_SIZE];
 bool complete;


 if (!sc_filter->mask)
  return 0;

 raw = kmalloc_array(WAKEUP_MAX_SIZE, sizeof(*raw), GFP_KERNEL);
 if (!raw)
  return -ENOMEM;

 ret = ir_raw_encode_scancode(dev->wakeup_protocol, sc_filter->data,
         raw, WAKEUP_MAX_SIZE);
 complete = (ret != -ENOBUFS);
 if (!complete)
  ret = WAKEUP_MAX_SIZE;
 else if (ret < 0)
  goto out_raw;


 for (i = 0, count = 0; i < ret && count < WAKEUP_MAX_SIZE; ++i) {

  val = DIV_ROUND_UP(raw[i].duration, 1000L) / SAMPLE_PERIOD;


  while (val > 0 && count < WAKEUP_MAX_SIZE) {

   if (complete && i == ret - 1 && val < BUF_LEN_MASK)
    break;


   buf_val = (val > BUF_LEN_MASK) ? BUF_LEN_MASK : val;

   wake_buf[count] = buf_val;
   val -= buf_val;
   if ((raw[i]).pulse)
    wake_buf[count] |= BUF_PULSE_BIT;
   count++;
  }
 }

 nvt_write_wakeup_codes(dev, wake_buf, count);
 ret = 0;
out_raw:
 kfree(raw);

 return ret;
}
