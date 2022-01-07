
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_omap_slot {TYPE_1__* host; int cover_timer; int cover_tasklet; TYPE_2__* pdata; struct mmc_host* mmc; } ;
struct mmc_host {int class_dev; } ;
struct TYPE_4__ {int * get_cover_state; int * name; } ;
struct TYPE_3__ {int mmc_omap_wq; } ;


 int del_timer_sync (int *) ;
 int dev_attr_cover_switch ;
 int dev_attr_slot_name ;
 int device_remove_file (int *,int *) ;
 int flush_workqueue (int ) ;
 int mmc_free_host (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void mmc_omap_remove_slot(struct mmc_omap_slot *slot)
{
 struct mmc_host *mmc = slot->mmc;

 if (slot->pdata->name != ((void*)0))
  device_remove_file(&mmc->class_dev, &dev_attr_slot_name);
 if (slot->pdata->get_cover_state != ((void*)0))
  device_remove_file(&mmc->class_dev, &dev_attr_cover_switch);

 tasklet_kill(&slot->cover_tasklet);
 del_timer_sync(&slot->cover_timer);
 flush_workqueue(slot->host->mmc_omap_wq);

 mmc_remove_host(mmc);
 mmc_free_host(mmc);
}
