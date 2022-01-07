
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae_handle {int q_num; int node; struct hnae_ae_dev* dev; int * qs; } ;
struct hnae_ae_dev {int cls_dev; int owner; TYPE_1__* ops; int lock; } ;
struct TYPE_2__ {int (* put_handle ) (struct hnae_handle*) ;int (* reset ) (struct hnae_handle*) ;} ;


 int hnae_fini_queue (int ) ;
 int hnae_list_del (int *,int *) ;
 int module_put (int ) ;
 int put_device (int *) ;
 int stub1 (struct hnae_handle*) ;
 int stub2 (struct hnae_handle*) ;

void hnae_put_handle(struct hnae_handle *h)
{
 struct hnae_ae_dev *dev = h->dev;
 int i;

 for (i = 0; i < h->q_num; i++)
  hnae_fini_queue(h->qs[i]);

 if (h->dev->ops->reset)
  h->dev->ops->reset(h);

 hnae_list_del(&dev->lock, &h->node);

 if (dev->ops->put_handle)
  dev->ops->put_handle(h);

 module_put(dev->owner);

 put_device(&dev->cls_dev);
}
