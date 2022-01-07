
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct mt76_usb {TYPE_1__ mcu; } ;
struct mt76_queue {int ndesc; int * entry; int buf_size; int lock; } ;
struct mt76_dev {int dev; struct mt76_queue* q_rx; struct mt76_usb usb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MCU_RESP_URB_SIZE ;
 int MT_NUM_RX_ENTRIES ;
 size_t MT_RXQ_MAIN ;
 int PAGE_SIZE ;
 int * devm_kcalloc (int ,int,int,int ) ;
 int devm_kmalloc (int ,int ,int ) ;
 int mt76u_rx_urb_alloc (struct mt76_dev*,int *) ;
 int mt76u_submit_rx_buffers (struct mt76_dev*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mt76u_alloc_rx(struct mt76_dev *dev)
{
 struct mt76_usb *usb = &dev->usb;
 struct mt76_queue *q = &dev->q_rx[MT_RXQ_MAIN];
 int i, err;

 usb->mcu.data = devm_kmalloc(dev->dev, MCU_RESP_URB_SIZE, GFP_KERNEL);
 if (!usb->mcu.data)
  return -ENOMEM;

 spin_lock_init(&q->lock);
 q->entry = devm_kcalloc(dev->dev,
    MT_NUM_RX_ENTRIES, sizeof(*q->entry),
    GFP_KERNEL);
 if (!q->entry)
  return -ENOMEM;

 q->ndesc = MT_NUM_RX_ENTRIES;
 q->buf_size = PAGE_SIZE;

 for (i = 0; i < q->ndesc; i++) {
  err = mt76u_rx_urb_alloc(dev, &q->entry[i]);
  if (err < 0)
   return err;
 }

 return mt76u_submit_rx_buffers(dev);
}
