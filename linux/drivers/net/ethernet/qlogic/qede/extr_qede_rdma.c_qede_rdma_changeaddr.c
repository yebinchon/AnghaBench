
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ qedr_dev; } ;
struct qede_dev {TYPE_1__ rdma_info; } ;
struct TYPE_4__ {int (* notify ) (scalar_t__,int ) ;} ;


 int QEDE_CHANGE_ADDR ;
 int qede_rdma_supported (struct qede_dev*) ;
 TYPE_2__* qedr_drv ;
 int stub1 (scalar_t__,int ) ;

__attribute__((used)) static void qede_rdma_changeaddr(struct qede_dev *edev)
{
 if (!qede_rdma_supported(edev))
  return;

 if (qedr_drv && edev->rdma_info.qedr_dev && qedr_drv->notify)
  qedr_drv->notify(edev->rdma_info.qedr_dev, QEDE_CHANGE_ADDR);
}
