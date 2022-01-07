
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int state; int wq; int chip_lock; int (* enable ) (struct mtd_info*) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int FL_PM_SUSPENDED ;
 int FL_READY ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mtd_info*) ;
 int wait ;

__attribute__((used)) static int onenand_get_device(struct mtd_info *mtd, int new_state)
{
 struct onenand_chip *this = mtd->priv;
 DECLARE_WAITQUEUE(wait, current);




 while (1) {
  spin_lock(&this->chip_lock);
  if (this->state == FL_READY) {
   this->state = new_state;
   spin_unlock(&this->chip_lock);
   if (new_state != FL_PM_SUSPENDED && this->enable)
    this->enable(mtd);
   break;
  }
  if (new_state == FL_PM_SUSPENDED) {
   spin_unlock(&this->chip_lock);
   return (this->state == FL_PM_SUSPENDED) ? 0 : -EAGAIN;
  }
  set_current_state(TASK_UNINTERRUPTIBLE);
  add_wait_queue(&this->wq, &wait);
  spin_unlock(&this->chip_lock);
  schedule();
  remove_wait_queue(&this->wq, &wait);
 }

 return 0;
}
