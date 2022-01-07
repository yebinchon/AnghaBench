
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int wait; int res_q; } ;
struct TYPE_4__ {TYPE_1__ mcu; } ;
struct mt76_dev {TYPE_2__ mmio; } ;


 int skb_queue_tail (int *,struct sk_buff*) ;
 int wake_up (int *) ;

void mt76_mcu_rx_event(struct mt76_dev *dev, struct sk_buff *skb)
{
 skb_queue_tail(&dev->mmio.mcu.res_q, skb);
 wake_up(&dev->mmio.mcu.wait);
}
