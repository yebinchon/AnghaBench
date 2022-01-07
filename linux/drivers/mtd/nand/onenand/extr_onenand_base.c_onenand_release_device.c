
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {scalar_t__ state; int chip_lock; int wq; int (* disable ) (struct mtd_info*) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;


 scalar_t__ FL_PM_SUSPENDED ;
 scalar_t__ FL_READY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mtd_info*) ;
 int wake_up (int *) ;

__attribute__((used)) static void onenand_release_device(struct mtd_info *mtd)
{
 struct onenand_chip *this = mtd->priv;

 if (this->state != FL_PM_SUSPENDED && this->disable)
  this->disable(mtd);

 spin_lock(&this->chip_lock);
 this->state = FL_READY;
 wake_up(&this->wq);
 spin_unlock(&this->chip_lock);
}
