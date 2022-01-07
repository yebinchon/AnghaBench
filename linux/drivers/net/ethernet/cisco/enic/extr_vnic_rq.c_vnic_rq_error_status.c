
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_rq {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int error_status; } ;


 unsigned int ioread32 (int *) ;

unsigned int vnic_rq_error_status(struct vnic_rq *rq)
{
 return ioread32(&rq->ctrl->error_status);
}
