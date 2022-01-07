
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct mt76_queue {size_t first; size_t tail; int ndesc; TYPE_1__* entry; } ;
struct mt76_dev {int dev; int state; } ;
struct TYPE_2__ {struct urb* urb; } ;


 int ENODEV ;
 int GFP_ATOMIC ;
 int MT76_REMOVED ;
 int dev_err (int ,char*,int) ;
 int set_bit (int ,int *) ;
 int trace_submit_urb (struct mt76_dev*,struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void mt76u_tx_kick(struct mt76_dev *dev, struct mt76_queue *q)
{
 struct urb *urb;
 int err;

 while (q->first != q->tail) {
  urb = q->entry[q->first].urb;

  trace_submit_urb(dev, urb);
  err = usb_submit_urb(urb, GFP_ATOMIC);
  if (err < 0) {
   if (err == -ENODEV)
    set_bit(MT76_REMOVED, &dev->state);
   else
    dev_err(dev->dev, "tx urb submit failed:%d\n",
     err);
   break;
  }
  q->first = (q->first + 1) % q->ndesc;
 }
}
