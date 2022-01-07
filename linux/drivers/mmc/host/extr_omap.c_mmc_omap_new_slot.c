
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_omap_slot {int id; TYPE_2__* pdata; int cover_tasklet; int cover_timer; int power_mode; struct mmc_host* mmc; struct mmc_omap_host* host; } ;
struct mmc_omap_host {TYPE_1__* pdata; struct mmc_omap_slot** slots; int dev; } ;
struct mmc_host {int caps; int f_min; int f_max; int max_segs; int max_blk_size; int max_blk_count; int max_req_size; int max_seg_size; int class_dev; int ocr_avail; int * ops; } ;
struct TYPE_4__ {int wires; int * name; int * get_cover_state; int ocr_mask; } ;
struct TYPE_3__ {scalar_t__ max_freq; TYPE_2__* slots; } ;


 int ENOMEM ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_ERASE ;
 int MMC_POWER_UNDEFINED ;
 int dev_attr_cover_switch ;
 int dev_attr_slot_name ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int min (scalar_t__,int) ;
 int mmc_add_host (struct mmc_host*) ;
 struct mmc_host* mmc_alloc_host (int,int ) ;
 int mmc_free_host (struct mmc_host*) ;
 scalar_t__ mmc_omap2 () ;
 int mmc_omap_cover_handler ;
 int mmc_omap_cover_timer ;
 int mmc_omap_ops ;
 struct mmc_omap_slot* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_schedule (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int mmc_omap_new_slot(struct mmc_omap_host *host, int id)
{
 struct mmc_omap_slot *slot = ((void*)0);
 struct mmc_host *mmc;
 int r;

 mmc = mmc_alloc_host(sizeof(struct mmc_omap_slot), host->dev);
 if (mmc == ((void*)0))
  return -ENOMEM;

 slot = mmc_priv(mmc);
 slot->host = host;
 slot->mmc = mmc;
 slot->id = id;
 slot->power_mode = MMC_POWER_UNDEFINED;
 slot->pdata = &host->pdata->slots[id];

 host->slots[id] = slot;

 mmc->caps = 0;
 if (host->pdata->slots[id].wires >= 4)
  mmc->caps |= MMC_CAP_4_BIT_DATA | MMC_CAP_ERASE;

 mmc->ops = &mmc_omap_ops;
 mmc->f_min = 400000;

 if (mmc_omap2())
  mmc->f_max = 48000000;
 else
  mmc->f_max = 24000000;
 if (host->pdata->max_freq)
  mmc->f_max = min(host->pdata->max_freq, mmc->f_max);
 mmc->ocr_avail = slot->pdata->ocr_mask;





 mmc->max_segs = 32;
 mmc->max_blk_size = 2048;
 mmc->max_blk_count = 2048;
 mmc->max_req_size = mmc->max_blk_size * mmc->max_blk_count;
 mmc->max_seg_size = mmc->max_req_size;

 if (slot->pdata->get_cover_state != ((void*)0)) {
  timer_setup(&slot->cover_timer, mmc_omap_cover_timer, 0);
  tasklet_init(&slot->cover_tasklet, mmc_omap_cover_handler,
        (unsigned long)slot);
 }

 r = mmc_add_host(mmc);
 if (r < 0)
  goto err_remove_host;

 if (slot->pdata->name != ((void*)0)) {
  r = device_create_file(&mmc->class_dev,
     &dev_attr_slot_name);
  if (r < 0)
   goto err_remove_host;
 }

 if (slot->pdata->get_cover_state != ((void*)0)) {
  r = device_create_file(&mmc->class_dev,
     &dev_attr_cover_switch);
  if (r < 0)
   goto err_remove_slot_name;
  tasklet_schedule(&slot->cover_tasklet);
 }

 return 0;

err_remove_slot_name:
 if (slot->pdata->name != ((void*)0))
  device_remove_file(&mmc->class_dev, &dev_attr_slot_name);
err_remove_host:
 mmc_remove_host(mmc);
 mmc_free_host(mmc);
 return r;
}
