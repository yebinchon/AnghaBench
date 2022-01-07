
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt76_queue {int ndesc; TYPE_2__* entry; } ;
struct mt76_dev {TYPE_1__* q_tx; } ;
struct TYPE_4__ {int urb; } ;
struct TYPE_3__ {struct mt76_queue* q; } ;


 int IEEE80211_NUM_ACS ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void mt76u_free_tx(struct mt76_dev *dev)
{
 struct mt76_queue *q;
 int i, j;

 for (i = 0; i < IEEE80211_NUM_ACS; i++) {
  q = dev->q_tx[i].q;
  for (j = 0; j < q->ndesc; j++)
   usb_free_urb(q->entry[j].urb);
 }
}
