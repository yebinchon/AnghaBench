
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mspro_block_data {int attr_group; int q_lock; struct memstick_dev* card; } ;
struct TYPE_2__ {int kobj; } ;
struct memstick_dev {TYPE_1__ dev; int start; int stop; int check; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct mspro_block_data*) ;
 struct mspro_block_data* kzalloc (int,int ) ;
 int memstick_set_drvdata (struct memstick_dev*,struct mspro_block_data*) ;
 int mspro_block_check_card ;
 int mspro_block_data_clear (struct mspro_block_data*) ;
 int mspro_block_init_card (struct memstick_dev*) ;
 int mspro_block_init_disk (struct memstick_dev*) ;
 int mspro_block_start ;
 int mspro_block_stop ;
 int spin_lock_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int mspro_block_probe(struct memstick_dev *card)
{
 struct mspro_block_data *msb;
 int rc = 0;

 msb = kzalloc(sizeof(struct mspro_block_data), GFP_KERNEL);
 if (!msb)
  return -ENOMEM;
 memstick_set_drvdata(card, msb);
 msb->card = card;
 spin_lock_init(&msb->q_lock);

 rc = mspro_block_init_card(card);

 if (rc)
  goto out_free;

 rc = sysfs_create_group(&card->dev.kobj, &msb->attr_group);
 if (rc)
  goto out_free;

 rc = mspro_block_init_disk(card);
 if (!rc) {
  card->check = mspro_block_check_card;
  card->stop = mspro_block_stop;
  card->start = mspro_block_start;
  return 0;
 }

 sysfs_remove_group(&card->dev.kobj, &msb->attr_group);
out_free:
 memstick_set_drvdata(card, ((void*)0));
 mspro_block_data_clear(msb);
 kfree(msb);
 return rc;
}
