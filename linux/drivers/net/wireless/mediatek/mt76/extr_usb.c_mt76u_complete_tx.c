
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; struct mt76_queue_entry* context; TYPE_1__* dev; } ;
struct mt76_queue_entry {int done; } ;
struct mt76_dev {int tx_tasklet; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*,int ) ;
 struct mt76_dev* dev_get_drvdata (int *) ;
 scalar_t__ mt76u_urb_error (struct urb*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void mt76u_complete_tx(struct urb *urb)
{
 struct mt76_dev *dev = dev_get_drvdata(&urb->dev->dev);
 struct mt76_queue_entry *e = urb->context;

 if (mt76u_urb_error(urb))
  dev_err(dev->dev, "tx urb failed: %d\n", urb->status);
 e->done = 1;

 tasklet_schedule(&dev->tx_tasklet);
}
