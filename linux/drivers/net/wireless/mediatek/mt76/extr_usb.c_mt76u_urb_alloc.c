
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {int dummy; } ;
struct scatterlist {int dummy; } ;
struct mt76_queue_entry {TYPE_2__* urb; } ;
struct TYPE_4__ {scalar_t__ sg_en; } ;
struct mt76_dev {TYPE_1__ usb; } ;
struct TYPE_5__ {struct scatterlist* sg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* kzalloc (unsigned int,int ) ;
 int usb_init_urb (TYPE_2__*) ;

__attribute__((used)) static int
mt76u_urb_alloc(struct mt76_dev *dev, struct mt76_queue_entry *e,
  int sg_max_size)
{
 unsigned int size = sizeof(struct urb);

 if (dev->usb.sg_en)
  size += sg_max_size * sizeof(struct scatterlist);

 e->urb = kzalloc(size, GFP_KERNEL);
 if (!e->urb)
  return -ENOMEM;

 usb_init_urb(e->urb);

 if (dev->usb.sg_en)
  e->urb->sg = (struct scatterlist *)(e->urb + 1);

 return 0;
}
