
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int mutex; } ;
struct mt76_usb {TYPE_1__ mcu; } ;
struct mt76_reg_pair {scalar_t__ value; scalar_t__ reg; } ;
struct mt76_dev {struct mt76_usb usb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MT_DMA_HDR_LEN ;
 int MT_INBAND_PACKET_MAX_LEN ;
 int __mt76x02u_mcu_send_msg (struct mt76_dev*,struct sk_buff*,int const,int) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int min (int const,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_put_le32 (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int
mt76x02u_mcu_wr_rp(struct mt76_dev *dev, u32 base,
     const struct mt76_reg_pair *data, int n)
{
 const int CMD_RANDOM_WRITE = 12;
 const int max_vals_per_cmd = MT_INBAND_PACKET_MAX_LEN / 8;
 struct mt76_usb *usb = &dev->usb;
 struct sk_buff *skb;
 int cnt, i, ret;

 if (!n)
  return 0;

 cnt = min(max_vals_per_cmd, n);

 skb = alloc_skb(cnt * 8 + MT_DMA_HDR_LEN + 4, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;
 skb_reserve(skb, MT_DMA_HDR_LEN);

 for (i = 0; i < cnt; i++) {
  skb_put_le32(skb, base + data[i].reg);
  skb_put_le32(skb, data[i].value);
 }

 mutex_lock(&usb->mcu.mutex);
 ret = __mt76x02u_mcu_send_msg(dev, skb, CMD_RANDOM_WRITE, cnt == n);
 mutex_unlock(&usb->mcu.mutex);
 if (ret)
  return ret;

 return mt76x02u_mcu_wr_rp(dev, base, data + cnt, n - cnt);
}
