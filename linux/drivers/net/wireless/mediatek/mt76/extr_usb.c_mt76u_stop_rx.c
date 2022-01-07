
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt76_queue {int ndesc; TYPE_1__* entry; } ;
struct TYPE_4__ {int rx_tasklet; } ;
struct mt76_dev {TYPE_2__ usb; struct mt76_queue* q_rx; } ;
struct TYPE_3__ {int urb; } ;


 size_t MT_RXQ_MAIN ;
 int tasklet_kill (int *) ;
 int usb_poison_urb (int ) ;

void mt76u_stop_rx(struct mt76_dev *dev)
{
 struct mt76_queue *q = &dev->q_rx[MT_RXQ_MAIN];
 int i;

 for (i = 0; i < q->ndesc; i++)
  usb_poison_urb(q->entry[i].urb);

 tasklet_kill(&dev->usb.rx_tasklet);
}
