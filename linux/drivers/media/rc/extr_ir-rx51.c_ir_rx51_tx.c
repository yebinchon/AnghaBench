
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct ir_rx51* priv; } ;
struct ir_rx51 {int* wbuf; int wbuf_index; int wqueue; int timer; } ;


 int EINVAL ;
 int HRTIMER_MODE_REL ;
 int US_TO_NS (int) ;
 unsigned int WBUF_LEN ;
 int hrtimer_start (int *,int ,int ) ;
 int init_timing_params (struct ir_rx51*) ;
 int ir_rx51_on (struct ir_rx51*) ;
 int memcpy (int*,unsigned int*,unsigned int) ;
 int ns_to_ktime (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int ir_rx51_tx(struct rc_dev *dev, unsigned int *buffer,
        unsigned int count)
{
 struct ir_rx51 *ir_rx51 = dev->priv;

 if (count > WBUF_LEN)
  return -EINVAL;

 memcpy(ir_rx51->wbuf, buffer, count * sizeof(unsigned int));


 wait_event_interruptible(ir_rx51->wqueue, ir_rx51->wbuf_index < 0);

 init_timing_params(ir_rx51);
 if (count < WBUF_LEN)
  ir_rx51->wbuf[count] = -1;






 ir_rx51_on(ir_rx51);
 ir_rx51->wbuf_index = 1;
 hrtimer_start(&ir_rx51->timer,
        ns_to_ktime(US_TO_NS(ir_rx51->wbuf[0])),
        HRTIMER_MODE_REL);




 wait_event_interruptible(ir_rx51->wqueue, ir_rx51->wbuf_index < 0);



 return count;
}
