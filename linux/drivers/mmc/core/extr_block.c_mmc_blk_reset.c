
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* card; } ;
struct mmc_blk_data {int reset_done; int part_type; int part_curr; } ;
struct TYPE_2__ {int dev; } ;


 int EEXIST ;
 int ENODEV ;
 int EOPNOTSUPP ;
 struct mmc_blk_data* dev_get_drvdata (int *) ;
 int mmc_blk_part_switch (TYPE_1__*,int ) ;
 int mmc_hw_reset (struct mmc_host*) ;

__attribute__((used)) static int mmc_blk_reset(struct mmc_blk_data *md, struct mmc_host *host,
    int type)
{
 int err;

 if (md->reset_done & type)
  return -EEXIST;

 md->reset_done |= type;
 err = mmc_hw_reset(host);

 if (err != -EOPNOTSUPP) {
  struct mmc_blk_data *main_md =
   dev_get_drvdata(&host->card->dev);
  int part_err;

  main_md->part_curr = main_md->part_type;
  part_err = mmc_blk_part_switch(host->card, md->part_type);
  if (part_err) {




   return -ENODEV;
  }
 }
 return err;
}
