
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rdma_supported; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct qede_dev {TYPE_2__ dev_info; } ;



bool qede_rdma_supported(struct qede_dev *dev)
{
 return dev->dev_info.common.rdma_supported;
}
