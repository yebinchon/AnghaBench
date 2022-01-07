
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int dummy; } ;


 int kfree (void*) ;

__attribute__((used)) static void qed_free_cdev(struct qed_dev *cdev)
{
 kfree((void *)cdev);
}
