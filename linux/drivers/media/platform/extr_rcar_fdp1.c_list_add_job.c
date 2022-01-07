
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct fdp1_job {int list; } ;
struct fdp1_dev {int irqlock; } ;


 int list_add_tail (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void list_add_job(struct fdp1_dev *fdp1,
    struct list_head *list,
    struct fdp1_job *job)
{
 unsigned long flags;

 spin_lock_irqsave(&fdp1->irqlock, flags);
 list_add_tail(&job->list, list);
 spin_unlock_irqrestore(&fdp1->irqlock, flags);
}
