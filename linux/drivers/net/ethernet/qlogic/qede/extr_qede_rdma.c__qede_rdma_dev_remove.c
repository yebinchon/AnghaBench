
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ qedr_dev; } ;
struct qede_dev {TYPE_1__ rdma_info; } ;
struct TYPE_4__ {int (* remove ) (scalar_t__) ;} ;


 TYPE_2__* qedr_drv ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void _qede_rdma_dev_remove(struct qede_dev *edev)
{
 if (qedr_drv && qedr_drv->remove && edev->rdma_info.qedr_dev)
  qedr_drv->remove(edev->rdma_info.qedr_dev);
}
