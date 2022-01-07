
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int * p_iov_info; } ;


 int kfree (int *) ;

void qed_iov_free_hw_info(struct qed_dev *cdev)
{
 kfree(cdev->p_iov_info);
 cdev->p_iov_info = ((void*)0);
}
