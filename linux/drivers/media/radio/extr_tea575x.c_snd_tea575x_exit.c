
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_handler; } ;
struct snd_tea575x {TYPE_1__ vd; } ;


 int v4l2_ctrl_handler_free (int ) ;
 int video_unregister_device (TYPE_1__*) ;

void snd_tea575x_exit(struct snd_tea575x *tea)
{
 video_unregister_device(&tea->vd);
 v4l2_ctrl_handler_free(tea->vd.ctrl_handler);
}
