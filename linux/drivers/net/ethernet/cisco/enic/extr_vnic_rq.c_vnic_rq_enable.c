
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_rq {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int enable; } ;


 int iowrite32 (int,int *) ;

void vnic_rq_enable(struct vnic_rq *rq)
{
 iowrite32(1, &rq->ctrl->enable);
}
