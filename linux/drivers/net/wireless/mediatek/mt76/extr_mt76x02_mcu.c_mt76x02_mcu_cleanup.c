
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int res_q; } ;
struct TYPE_5__ {TYPE_1__ mcu; } ;
struct TYPE_6__ {TYPE_2__ mmio; } ;
struct mt76x02_dev {TYPE_3__ mt76; } ;


 int MT_MCU_INT_LEVEL ;
 int dev_kfree_skb (struct sk_buff*) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int usleep_range (int,int) ;

int mt76x02_mcu_cleanup(struct mt76x02_dev *dev)
{
 struct sk_buff *skb;

 mt76_wr(dev, MT_MCU_INT_LEVEL, 1);
 usleep_range(20000, 30000);

 while ((skb = skb_dequeue(&dev->mt76.mmio.mcu.res_q)) != ((void*)0))
  dev_kfree_skb(skb);

 return 0;
}
