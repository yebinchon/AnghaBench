
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int power_delay_ms; } ;
struct TYPE_7__ {int * class; struct device* parent; } ;
struct mmc_host {int rescan_disable; int index; int max_segs; int max_seg_size; int max_req_size; int max_blk_size; int max_blk_count; TYPE_1__ ios; int fixed_drv_type; int retune_timer; int sdio_irq_work; int detect; int wq; int lock; TYPE_2__ class_dev; struct device* parent; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int PAGE_SIZE ;
 int dev_set_name (TYPE_2__*,char*,int) ;
 int device_enable_async_suspend (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct mmc_host*) ;
 struct mmc_host* kzalloc (int,int ) ;
 scalar_t__ mmc_gpio_alloc (struct mmc_host*) ;
 int mmc_host_class ;
 int mmc_host_ida ;
 int mmc_rescan ;
 int mmc_retune_timer ;
 int put_device (TYPE_2__*) ;
 int sdio_irq_work ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct mmc_host *mmc_alloc_host(int extra, struct device *dev)
{
 int err;
 struct mmc_host *host;

 host = kzalloc(sizeof(struct mmc_host) + extra, GFP_KERNEL);
 if (!host)
  return ((void*)0);


 host->rescan_disable = 1;

 err = ida_simple_get(&mmc_host_ida, 0, 0, GFP_KERNEL);
 if (err < 0) {
  kfree(host);
  return ((void*)0);
 }

 host->index = err;

 dev_set_name(&host->class_dev, "mmc%d", host->index);

 host->parent = dev;
 host->class_dev.parent = dev;
 host->class_dev.class = &mmc_host_class;
 device_initialize(&host->class_dev);
 device_enable_async_suspend(&host->class_dev);

 if (mmc_gpio_alloc(host)) {
  put_device(&host->class_dev);
  return ((void*)0);
 }

 spin_lock_init(&host->lock);
 init_waitqueue_head(&host->wq);
 INIT_DELAYED_WORK(&host->detect, mmc_rescan);
 INIT_DELAYED_WORK(&host->sdio_irq_work, sdio_irq_work);
 timer_setup(&host->retune_timer, mmc_retune_timer, 0);





 host->max_segs = 1;
 host->max_seg_size = PAGE_SIZE;

 host->max_req_size = PAGE_SIZE;
 host->max_blk_size = 512;
 host->max_blk_count = PAGE_SIZE / 512;

 host->fixed_drv_type = -EINVAL;
 host->ios.power_delay_ms = 10;

 return host;
}
