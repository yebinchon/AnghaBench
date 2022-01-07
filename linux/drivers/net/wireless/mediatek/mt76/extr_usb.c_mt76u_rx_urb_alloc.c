
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_queue_entry {int urb; } ;
struct mt76_dev {int dummy; } ;


 int GFP_KERNEL ;
 int MT_RX_SG_MAX_SIZE ;
 int mt76u_refill_rx (struct mt76_dev*,int ,int ,int ) ;
 int mt76u_urb_alloc (struct mt76_dev*,struct mt76_queue_entry*,int ) ;

__attribute__((used)) static int
mt76u_rx_urb_alloc(struct mt76_dev *dev, struct mt76_queue_entry *e)
{
 int err;

 err = mt76u_urb_alloc(dev, e, MT_RX_SG_MAX_SIZE);
 if (err)
  return err;

 return mt76u_refill_rx(dev, e->urb, MT_RX_SG_MAX_SIZE,
          GFP_KERNEL);
}
