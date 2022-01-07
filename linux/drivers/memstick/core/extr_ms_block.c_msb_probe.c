
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int q_lock; struct memstick_dev* card; } ;
struct memstick_dev {int start; int stop; int check; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct msb_data*) ;
 struct msb_data* kzalloc (int,int ) ;
 int memstick_set_drvdata (struct memstick_dev*,struct msb_data*) ;
 int msb_check_card ;
 int msb_data_clear (struct msb_data*) ;
 int msb_init_card (struct memstick_dev*) ;
 int msb_init_disk (struct memstick_dev*) ;
 int msb_start ;
 int msb_stop ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int msb_probe(struct memstick_dev *card)
{
 struct msb_data *msb;
 int rc = 0;

 msb = kzalloc(sizeof(struct msb_data), GFP_KERNEL);
 if (!msb)
  return -ENOMEM;
 memstick_set_drvdata(card, msb);
 msb->card = card;
 spin_lock_init(&msb->q_lock);

 rc = msb_init_card(card);
 if (rc)
  goto out_free;

 rc = msb_init_disk(card);
 if (!rc) {
  card->check = msb_check_card;
  card->stop = msb_stop;
  card->start = msb_start;
  return 0;
 }
out_free:
 memstick_set_drvdata(card, ((void*)0));
 msb_data_clear(msb);
 kfree(msb);
 return rc;
}
