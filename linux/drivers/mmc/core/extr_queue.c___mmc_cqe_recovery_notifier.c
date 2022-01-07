
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_queue {int recovery_needed; int recovery_work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void __mmc_cqe_recovery_notifier(struct mmc_queue *mq)
{
 if (!mq->recovery_needed) {
  mq->recovery_needed = 1;
  schedule_work(&mq->recovery_work);
 }
}
