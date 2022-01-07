
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int msg_seq; } ;
struct mt76_usb {TYPE_1__ mcu; } ;
struct mt76_dev {int state; struct mt76_usb usb; } ;


 int CPU_TX_PORT ;
 int FIELD_PREP (int ,int) ;
 int MT76_REMOVED ;
 int MT_MCU_MSG_CMD_SEQ ;
 int MT_MCU_MSG_CMD_TYPE ;
 int MT_MCU_MSG_TYPE_CMD ;
 int consume_skb (struct sk_buff*) ;
 int mt76u_bulk_msg (struct mt76_dev*,int ,int ,int *,int) ;
 int mt76x02u_mcu_wait_resp (struct mt76_dev*,int) ;
 int mt76x02u_skb_dma_info (struct sk_buff*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
__mt76x02u_mcu_send_msg(struct mt76_dev *dev, struct sk_buff *skb,
   int cmd, bool wait_resp)
{
 struct mt76_usb *usb = &dev->usb;
 int ret;
 u8 seq = 0;
 u32 info;

 if (test_bit(MT76_REMOVED, &dev->state))
  return 0;

 if (wait_resp) {
  seq = ++usb->mcu.msg_seq & 0xf;
  if (!seq)
   seq = ++usb->mcu.msg_seq & 0xf;
 }

 info = FIELD_PREP(MT_MCU_MSG_CMD_SEQ, seq) |
        FIELD_PREP(MT_MCU_MSG_CMD_TYPE, cmd) |
        MT_MCU_MSG_TYPE_CMD;
 ret = mt76x02u_skb_dma_info(skb, CPU_TX_PORT, info);
 if (ret)
  return ret;

 ret = mt76u_bulk_msg(dev, skb->data, skb->len, ((void*)0), 500);
 if (ret)
  return ret;

 if (wait_resp)
  ret = mt76x02u_mcu_wait_resp(dev, seq);

 consume_skb(skb);

 return ret;
}
