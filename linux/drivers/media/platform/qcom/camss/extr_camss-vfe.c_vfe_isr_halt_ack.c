
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_device {TYPE_1__* ops; int halt_complete; } ;
struct TYPE_2__ {int (* halt_clear ) (struct vfe_device*) ;} ;


 int complete (int *) ;
 int stub1 (struct vfe_device*) ;

__attribute__((used)) static inline void vfe_isr_halt_ack(struct vfe_device *vfe)
{
 complete(&vfe->halt_complete);
 vfe->ops->halt_clear(vfe);
}
