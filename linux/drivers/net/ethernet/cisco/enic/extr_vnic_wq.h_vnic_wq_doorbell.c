
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnic_wq {TYPE_2__* ctrl; TYPE_1__* to_use; } ;
struct TYPE_4__ {int posted_index; } ;
struct TYPE_3__ {int index; } ;


 int iowrite32 (int ,int *) ;
 int wmb () ;

__attribute__((used)) static inline void vnic_wq_doorbell(struct vnic_wq *wq)
{





 wmb();
 iowrite32(wq->to_use->index, &wq->ctrl->posted_index);
}
