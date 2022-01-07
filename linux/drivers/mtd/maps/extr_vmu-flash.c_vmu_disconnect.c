
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memcard {int partitions; struct memcard* mtd; struct memcard* parts; struct memcard* name; struct mdev_part* priv; } ;
struct mdev_part {int * mdev; } ;
struct maple_device {int * callback; } ;


 int kfree (struct memcard*) ;
 struct memcard* maple_get_drvdata (struct maple_device*) ;
 int mtd_device_unregister (struct memcard*) ;

__attribute__((used)) static void vmu_disconnect(struct maple_device *mdev)
{
 struct memcard *card;
 struct mdev_part *mpart;
 int x;

 mdev->callback = ((void*)0);
 card = maple_get_drvdata(mdev);
 for (x = 0; x < card->partitions; x++) {
  mpart = ((card->mtd)[x]).priv;
  mpart->mdev = ((void*)0);
  mtd_device_unregister(&((card->mtd)[x]));
  kfree(((card->parts)[x]).name);
 }
 kfree(card->parts);
 kfree(card->mtd);
 kfree(card);
}
