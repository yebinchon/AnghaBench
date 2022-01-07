
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int res_q; int wait; } ;
struct TYPE_4__ {TYPE_1__ mcu; } ;
struct mt76_dev {TYPE_2__ mmio; } ;


 unsigned long jiffies ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int time_is_after_jiffies (unsigned long) ;
 int wait_event_timeout (int ,int,unsigned long) ;

struct sk_buff *mt76_mcu_get_response(struct mt76_dev *dev,
          unsigned long expires)
{
 unsigned long timeout;

 if (!time_is_after_jiffies(expires))
  return ((void*)0);

 timeout = expires - jiffies;
 wait_event_timeout(dev->mmio.mcu.wait,
      !skb_queue_empty(&dev->mmio.mcu.res_q),
      timeout);
 return skb_dequeue(&dev->mmio.mcu.res_q);
}
