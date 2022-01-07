
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * ctrl_handler; } ;
struct rvin_dev {TYPE_3__ vdev; int ctrl_handler; TYPE_2__* info; TYPE_1__* parallel; } ;
struct TYPE_5__ {int use_mc; } ;
struct TYPE_4__ {int * subdev; } ;


 int rvin_v4l2_unregister (struct rvin_dev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static void rvin_parallel_subdevice_detach(struct rvin_dev *vin)
{
 rvin_v4l2_unregister(vin);
 vin->parallel->subdev = ((void*)0);

 if (!vin->info->use_mc) {
  v4l2_ctrl_handler_free(&vin->ctrl_handler);
  vin->vdev.ctrl_handler = ((void*)0);
 }
}
