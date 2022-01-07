
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ coverage_class; } ;
struct TYPE_5__ {TYPE_1__* hw_ops; } ;
struct ath10k {int data_lock; int set_coverage_class_work; int workqueue; TYPE_3__ fw_coverage; TYPE_2__ hw_params; } ;
struct TYPE_4__ {scalar_t__ set_coverage_class; } ;


 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void ath10k_wmi_queue_set_coverage_class_work(struct ath10k *ar)
{
 if (ar->hw_params.hw_ops->set_coverage_class) {
  spin_lock_bh(&ar->data_lock);






  if (ar->fw_coverage.coverage_class)
   queue_work(ar->workqueue, &ar->set_coverage_class_work);

  spin_unlock_bh(&ar->data_lock);
 }
}
