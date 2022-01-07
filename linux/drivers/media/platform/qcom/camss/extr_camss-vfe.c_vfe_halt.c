
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfe_device {TYPE_2__* camss; int halt_complete; TYPE_1__* ops; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* halt_request ) (struct vfe_device*) ;} ;


 int EIO ;
 int VFE_HALT_TIMEOUT_MS ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 int stub1 (struct vfe_device*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int vfe_halt(struct vfe_device *vfe)
{
 unsigned long time;

 reinit_completion(&vfe->halt_complete);

 vfe->ops->halt_request(vfe);

 time = wait_for_completion_timeout(&vfe->halt_complete,
  msecs_to_jiffies(VFE_HALT_TIMEOUT_MS));
 if (!time) {
  dev_err(vfe->camss->dev, "VFE halt timeout\n");
  return -EIO;
 }

 return 0;
}
