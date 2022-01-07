
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_queue {int ndesc; TYPE_1__* entry; } ;
struct mt76_dev {struct mt76_queue* q_rx; } ;
struct TYPE_2__ {int urb; } ;


 size_t MT_RXQ_MAIN ;
 int mt76u_submit_rx_buffers (struct mt76_dev*) ;
 int usb_unpoison_urb (int ) ;

int mt76u_resume_rx(struct mt76_dev *dev)
{
 struct mt76_queue *q = &dev->q_rx[MT_RXQ_MAIN];
 int i;

 for (i = 0; i < q->ndesc; i++)
  usb_unpoison_urb(q->entry[i].urb);

 return mt76u_submit_rx_buffers(dev);
}
