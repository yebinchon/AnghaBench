
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int hal_ind_lock; int hal_ind_queue; int hal_ind_work; int hal_ind_wq; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int create_freezable_workqueue (char*) ;
 int spin_lock_init (int *) ;
 int wcn36xx_ind_smd_work ;

int wcn36xx_smd_open(struct wcn36xx *wcn)
{
 wcn->hal_ind_wq = create_freezable_workqueue("wcn36xx_smd_ind");
 if (!wcn->hal_ind_wq)
  return -ENOMEM;

 INIT_WORK(&wcn->hal_ind_work, wcn36xx_ind_smd_work);
 INIT_LIST_HEAD(&wcn->hal_ind_queue);
 spin_lock_init(&wcn->hal_ind_lock);

 return 0;
}
