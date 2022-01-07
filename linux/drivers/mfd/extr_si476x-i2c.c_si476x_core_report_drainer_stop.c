
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si476x_core {int rds_drainer_is_working; int rds_drainer_status_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void si476x_core_report_drainer_stop(struct si476x_core *core)
{
 mutex_lock(&core->rds_drainer_status_lock);
 core->rds_drainer_is_working = 0;
 mutex_unlock(&core->rds_drainer_status_lock);
}
