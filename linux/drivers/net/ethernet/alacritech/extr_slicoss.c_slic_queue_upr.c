
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_upr_list {int pending; int lock; int list; } ;
struct slic_upr {int list; } ;
struct slic_device {struct slic_upr_list upr_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int slic_start_upr (struct slic_device*,struct slic_upr*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void slic_queue_upr(struct slic_device *sdev, struct slic_upr *upr)
{
 struct slic_upr_list *upr_list = &sdev->upr_list;
 bool pending;

 spin_lock_bh(&upr_list->lock);
 pending = upr_list->pending;
 INIT_LIST_HEAD(&upr->list);
 list_add_tail(&upr->list, &upr_list->list);
 upr_list->pending = 1;
 spin_unlock_bh(&upr_list->lock);

 if (!pending)
  slic_start_upr(sdev, upr);
}
