
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {scalar_t__ type; int complete_wq; int dev; int host; } ;
struct mmc_blk_data {scalar_t__ part_curr; scalar_t__ part_type; } ;


 scalar_t__ MMC_TYPE_SD_COMBO ;
 int destroy_workqueue (int ) ;
 struct mmc_blk_data* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int mmc_blk_part_switch (struct mmc_card*,scalar_t__) ;
 int mmc_blk_remove_debugfs (struct mmc_card*,struct mmc_blk_data*) ;
 int mmc_blk_remove_parts (struct mmc_card*,struct mmc_blk_data*) ;
 int mmc_blk_remove_req (struct mmc_blk_data*) ;
 int mmc_claim_host (int ) ;
 int mmc_release_host (int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;

__attribute__((used)) static void mmc_blk_remove(struct mmc_card *card)
{
 struct mmc_blk_data *md = dev_get_drvdata(&card->dev);

 mmc_blk_remove_debugfs(card, md);
 mmc_blk_remove_parts(card, md);
 pm_runtime_get_sync(&card->dev);
 if (md->part_curr != md->part_type) {
  mmc_claim_host(card->host);
  mmc_blk_part_switch(card, md->part_type);
  mmc_release_host(card->host);
 }
 if (card->type != MMC_TYPE_SD_COMBO)
  pm_runtime_disable(&card->dev);
 pm_runtime_put_noidle(&card->dev);
 mmc_blk_remove_req(md);
 dev_set_drvdata(&card->dev, ((void*)0));
 destroy_workqueue(card->complete_wq);
}
