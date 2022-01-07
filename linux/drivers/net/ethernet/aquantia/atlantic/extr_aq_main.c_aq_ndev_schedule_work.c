
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int aq_ndev_wq ;
 int queue_work (int ,struct work_struct*) ;

void aq_ndev_schedule_work(struct work_struct *work)
{
 queue_work(aq_ndev_wq, work);
}
