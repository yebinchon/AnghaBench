
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_rdma_start_in_params {int dummy; } ;
struct qed_dev {int dummy; } ;


 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int qed_rdma_start (int ,struct qed_rdma_start_in_params*) ;

__attribute__((used)) static int qed_rdma_init(struct qed_dev *cdev,
    struct qed_rdma_start_in_params *params)
{
 return qed_rdma_start(QED_AFFIN_HWFN(cdev), params);
}
