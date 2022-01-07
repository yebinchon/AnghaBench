
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int dummy; } ;


 void* QED_AFFIN_HWFN (struct qed_dev*) ;

__attribute__((used)) static void *qed_rdma_get_rdma_ctx(struct qed_dev *cdev)
{
 return QED_AFFIN_HWFN(cdev);
}
