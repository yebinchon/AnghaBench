
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si476x_core {int rds_drainer_is_working; int rds_drainer_status_lock; int rds_fifo_drainer; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static inline void si476x_core_start_rds_drainer_once(struct si476x_core *core)
{
 mutex_lock(&core->rds_drainer_status_lock);
 if (!core->rds_drainer_is_working) {
  core->rds_drainer_is_working = 1;
  schedule_work(&core->rds_fifo_drainer);
 }
 mutex_unlock(&core->rds_drainer_status_lock);
}
