
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {int dev; TYPE_1__* raw; } ;
struct ir_raw_event {int pulse; int duration; } ;
struct TYPE_2__ {int kfifo; } ;


 int EINVAL ;
 int ENOSPC ;
 int TO_STR (int ) ;
 int TO_US (int ) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*) ;
 int kfifo_put (int *,struct ir_raw_event) ;

int ir_raw_event_store(struct rc_dev *dev, struct ir_raw_event *ev)
{
 if (!dev->raw)
  return -EINVAL;

 dev_dbg(&dev->dev, "sample: (%05dus %s)\n",
  TO_US(ev->duration), TO_STR(ev->pulse));

 if (!kfifo_put(&dev->raw->kfifo, *ev)) {
  dev_err(&dev->dev, "IR event FIFO is full!\n");
  return -ENOSPC;
 }

 return 0;
}
