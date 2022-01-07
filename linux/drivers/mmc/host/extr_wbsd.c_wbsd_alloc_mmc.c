
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int dma; int ignore_timer; int lock; struct mmc_host* mmc; } ;
struct mmc_host {int f_min; int f_max; int ocr_avail; int max_segs; int max_req_size; int max_seg_size; int max_blk_size; int max_blk_count; int caps; int * ops; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_VDD_32_33 ;
 int MMC_VDD_33_34 ;
 int dev_set_drvdata (struct device*,struct mmc_host*) ;
 struct mmc_host* mmc_alloc_host (int,struct device*) ;
 struct wbsd_host* mmc_priv (struct mmc_host*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int wbsd_ops ;
 int wbsd_reset_ignore ;

__attribute__((used)) static int wbsd_alloc_mmc(struct device *dev)
{
 struct mmc_host *mmc;
 struct wbsd_host *host;




 mmc = mmc_alloc_host(sizeof(struct wbsd_host), dev);
 if (!mmc)
  return -ENOMEM;

 host = mmc_priv(mmc);
 host->mmc = mmc;

 host->dma = -1;




 mmc->ops = &wbsd_ops;
 mmc->f_min = 375000;
 mmc->f_max = 24000000;
 mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;
 mmc->caps = MMC_CAP_4_BIT_DATA;

 spin_lock_init(&host->lock);




 timer_setup(&host->ignore_timer, wbsd_reset_ignore, 0);





 mmc->max_segs = 128;




 mmc->max_req_size = 65536;





 mmc->max_seg_size = mmc->max_req_size;





 mmc->max_blk_size = 4087;





 mmc->max_blk_count = mmc->max_req_size;

 dev_set_drvdata(dev, mmc);

 return 0;
}
