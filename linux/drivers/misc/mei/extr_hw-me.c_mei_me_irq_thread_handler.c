
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {scalar_t__ dev_state; int recvd_hw_ready; scalar_t__ pg_event; int device_lock; int dev; void* hbuf_is_ready; int reset_work; int wait_hw_ready; } ;
struct list_head {int dummy; } ;
typedef scalar_t__ s32 ;
typedef int irqreturn_t ;


 int ENODATA ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int IRQ_HANDLED ;
 scalar_t__ MEI_DEV_POWER_DOWN ;
 scalar_t__ MEI_DEV_RESETTING ;
 scalar_t__ MEI_PG_EVENT_RECEIVED ;
 scalar_t__ MEI_PG_EVENT_WAIT ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int me_intr_clear (struct mei_device*,int ) ;
 int me_intr_src (int ) ;
 scalar_t__ mei_count_full_read_slots (struct mei_device*) ;
 void* mei_hbuf_is_ready (struct mei_device*) ;
 int mei_hcsr_read (struct mei_device*) ;
 int mei_hcsr_set_hig (struct mei_device*) ;
 int mei_host_is_ready (struct mei_device*) ;
 scalar_t__ mei_hw_is_ready (struct mei_device*) ;
 int mei_irq_compl_handler (struct mei_device*,struct list_head*) ;
 int mei_irq_read_handler (struct mei_device*,struct list_head*,scalar_t__*) ;
 int mei_irq_write_handler (struct mei_device*,struct list_head*) ;
 scalar_t__ mei_me_hw_is_resetting (struct mei_device*) ;
 int mei_me_intr_enable (struct mei_device*) ;
 int mei_me_pg_intr (struct mei_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 int wake_up (int *) ;

irqreturn_t mei_me_irq_thread_handler(int irq, void *dev_id)
{
 struct mei_device *dev = (struct mei_device *) dev_id;
 struct list_head cmpl_list;
 s32 slots;
 u32 hcsr;
 int rets = 0;

 dev_dbg(dev->dev, "function called after ISR to handle the interrupt processing.\n");

 mutex_lock(&dev->device_lock);

 hcsr = mei_hcsr_read(dev);
 me_intr_clear(dev, hcsr);

 INIT_LIST_HEAD(&cmpl_list);


 if (!mei_hw_is_ready(dev) && dev->dev_state != MEI_DEV_RESETTING) {
  dev_warn(dev->dev, "FW not ready: resetting.\n");
  schedule_work(&dev->reset_work);
  goto end;
 }

 if (mei_me_hw_is_resetting(dev))
  mei_hcsr_set_hig(dev);

 mei_me_pg_intr(dev, me_intr_src(hcsr));


 if (!mei_host_is_ready(dev)) {
  if (mei_hw_is_ready(dev)) {
   dev_dbg(dev->dev, "we need to start the dev.\n");
   dev->recvd_hw_ready = 1;
   wake_up(&dev->wait_hw_ready);
  } else {
   dev_dbg(dev->dev, "Spurious Interrupt\n");
  }
  goto end;
 }

 slots = mei_count_full_read_slots(dev);
 while (slots > 0) {
  dev_dbg(dev->dev, "slots to read = %08x\n", slots);
  rets = mei_irq_read_handler(dev, &cmpl_list, &slots);




  if (rets == -ENODATA)
   break;

  if (rets &&
      (dev->dev_state != MEI_DEV_RESETTING &&
       dev->dev_state != MEI_DEV_POWER_DOWN)) {
   dev_err(dev->dev, "mei_irq_read_handler ret = %d.\n",
      rets);
   schedule_work(&dev->reset_work);
   goto end;
  }
 }

 dev->hbuf_is_ready = mei_hbuf_is_ready(dev);






 if (dev->pg_event != MEI_PG_EVENT_WAIT &&
     dev->pg_event != MEI_PG_EVENT_RECEIVED) {
  rets = mei_irq_write_handler(dev, &cmpl_list);
  dev->hbuf_is_ready = mei_hbuf_is_ready(dev);
 }

 mei_irq_compl_handler(dev, &cmpl_list);

end:
 dev_dbg(dev->dev, "interrupt thread end ret = %d\n", rets);
 mei_me_intr_enable(dev);
 mutex_unlock(&dev->device_lock);
 return IRQ_HANDLED;
}
