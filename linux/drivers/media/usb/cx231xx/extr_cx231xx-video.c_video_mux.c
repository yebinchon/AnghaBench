
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx231xx {int video_input; int dev; int ctl_ainput; } ;
struct TYPE_2__ {int vmux; int amux; } ;


 TYPE_1__* INPUT (int) ;
 int cx231xx_do_mode_ctrl_overrides (struct cx231xx*) ;
 int cx231xx_set_audio_input (struct cx231xx*,int ) ;
 int cx231xx_set_video_input_mux (struct cx231xx*,int) ;
 int cx25840_call (struct cx231xx*,int ,int ,int ,int ,int ) ;
 int dev_dbg (int ,char*,int) ;
 int s_routing ;
 int video ;

void video_mux(struct cx231xx *dev, int index)
{
 dev->video_input = index;
 dev->ctl_ainput = INPUT(index)->amux;

 cx231xx_set_video_input_mux(dev, index);

 cx25840_call(dev, video, s_routing, INPUT(index)->vmux, 0, 0);

 cx231xx_set_audio_input(dev, dev->ctl_ainput);

 dev_dbg(dev->dev, "video_mux : %d\n", index);


 cx231xx_do_mode_ctrl_overrides(dev);
}
