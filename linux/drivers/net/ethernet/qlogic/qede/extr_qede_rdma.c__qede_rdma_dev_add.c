
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int exp_recovery; int qedr_dev; } ;
struct qede_dev {int ndev; int pdev; int cdev; TYPE_1__ rdma_info; } ;
struct TYPE_4__ {int (* add ) (int ,int ,int ) ;} ;


 TYPE_2__* qedr_drv ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void _qede_rdma_dev_add(struct qede_dev *edev)
{
 if (!qedr_drv)
  return;


 edev->rdma_info.exp_recovery = 0;
 edev->rdma_info.qedr_dev = qedr_drv->add(edev->cdev, edev->pdev,
       edev->ndev);
}
