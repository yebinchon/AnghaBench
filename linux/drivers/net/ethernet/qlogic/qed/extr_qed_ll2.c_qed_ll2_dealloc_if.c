
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int * ll2; } ;


 int kfree (int *) ;

void qed_ll2_dealloc_if(struct qed_dev *cdev)
{
 kfree(cdev->ll2);
 cdev->ll2 = ((void*)0);
}
