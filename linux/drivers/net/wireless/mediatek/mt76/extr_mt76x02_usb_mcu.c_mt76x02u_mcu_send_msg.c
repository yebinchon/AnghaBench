
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int mutex; } ;
struct mt76_usb {TYPE_1__ mcu; } ;
struct mt76_dev {struct mt76_usb usb; } ;


 int ENOMEM ;
 int MT_CMD_HDR_LEN ;
 int __mt76x02u_mcu_send_msg (struct mt76_dev*,struct sk_buff*,int,int) ;
 struct sk_buff* mt76_mcu_msg_alloc (void const*,int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mt76x02u_mcu_send_msg(struct mt76_dev *dev, int cmd, const void *data,
        int len, bool wait_resp)
{
 struct mt76_usb *usb = &dev->usb;
 struct sk_buff *skb;
 int err;

 skb = mt76_mcu_msg_alloc(data, MT_CMD_HDR_LEN, len, 8);
 if (!skb)
  return -ENOMEM;

 mutex_lock(&usb->mcu.mutex);
 err = __mt76x02u_mcu_send_msg(dev, skb, cmd, wait_resp);
 mutex_unlock(&usb->mcu.mutex);

 return err;
}
