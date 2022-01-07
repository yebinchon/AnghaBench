
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int ofld_dev_list; } ;


 int cxgb3_db_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void unregister_tdev(struct t3cdev *tdev)
{
 mutex_lock(&cxgb3_db_lock);
 list_del(&tdev->ofld_dev_list);
 mutex_unlock(&cxgb3_db_lock);
}
