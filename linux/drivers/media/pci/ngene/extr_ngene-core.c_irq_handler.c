
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ngene {scalar_t__ icounts; int cmd_done; int* ngenetohost; int EventQueueWriteIndex; scalar_t__ EventQueueReadIndex; int EventQueueOverflowCount; int EventQueueOverflowFlag; TYPE_6__* channel; int event_tasklet; TYPE_2__* EventBuffer; TYPE_2__* EventQueue; int cmd_lock; int cmd_wq; scalar_t__* CmdDoneByte; scalar_t__ BootFirmware; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_12__ {int state_lock; int demux_tasklet; TYPE_5__* nextBuffer; } ;
struct TYPE_9__ {int Flags; } ;
struct TYPE_10__ {TYPE_3__ SR; } ;
struct TYPE_11__ {TYPE_4__ ngeneBuffer; } ;
struct TYPE_8__ {int EventStatus; } ;
struct TYPE_7__ {struct device dev; } ;


 int EVENT_QUEUE_SIZE ;
 int FORCE_NMI ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MAX_STREAM ;
 int NGENE_INT_COUNTS ;
 int dev_err (struct device*,char*) ;
 scalar_t__ ngreadl (int ) ;
 int ngwritel (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t irq_handler(int irq, void *dev_id)
{
 struct ngene *dev = (struct ngene *)dev_id;
 struct device *pdev = &dev->pci_dev->dev;
 u32 icounts = 0;
 irqreturn_t rc = IRQ_NONE;
 u32 i = MAX_STREAM;
 u8 *tmpCmdDoneByte;

 if (dev->BootFirmware) {
  icounts = ngreadl(NGENE_INT_COUNTS);
  if (icounts != dev->icounts) {
   ngwritel(0, FORCE_NMI);
   dev->cmd_done = 1;
   wake_up(&dev->cmd_wq);
   dev->icounts = icounts;
   rc = IRQ_HANDLED;
  }
  return rc;
 }

 ngwritel(0, FORCE_NMI);

 spin_lock(&dev->cmd_lock);
 tmpCmdDoneByte = dev->CmdDoneByte;
 if (tmpCmdDoneByte &&
     (*tmpCmdDoneByte ||
     (dev->ngenetohost[0] == 1 && dev->ngenetohost[1] != 0))) {
  dev->CmdDoneByte = ((void*)0);
  dev->cmd_done = 1;
  wake_up(&dev->cmd_wq);
  rc = IRQ_HANDLED;
 }
 spin_unlock(&dev->cmd_lock);

 if (dev->EventBuffer->EventStatus & 0x80) {
  u8 nextWriteIndex =
   (dev->EventQueueWriteIndex + 1) &
   (EVENT_QUEUE_SIZE - 1);
  if (nextWriteIndex != dev->EventQueueReadIndex) {
   dev->EventQueue[dev->EventQueueWriteIndex] =
    *(dev->EventBuffer);
   dev->EventQueueWriteIndex = nextWriteIndex;
  } else {
   dev_err(pdev, "event overflow\n");
   dev->EventQueueOverflowCount += 1;
   dev->EventQueueOverflowFlag = 1;
  }
  dev->EventBuffer->EventStatus &= ~0x80;
  tasklet_schedule(&dev->event_tasklet);
  rc = IRQ_HANDLED;
 }

 while (i > 0) {
  i--;
  spin_lock(&dev->channel[i].state_lock);

  if (dev->channel[i].nextBuffer) {
   if ((dev->channel[i].nextBuffer->
        ngeneBuffer.SR.Flags & 0xC0) == 0x80) {
    dev->channel[i].nextBuffer->
     ngeneBuffer.SR.Flags |= 0x40;
    tasklet_schedule(
     &dev->channel[i].demux_tasklet);
    rc = IRQ_HANDLED;
   }
  }
  spin_unlock(&dev->channel[i].state_lock);
 }


 return IRQ_HANDLED;
}
