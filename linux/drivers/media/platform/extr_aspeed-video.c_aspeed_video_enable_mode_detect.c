
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_video {int dummy; } ;


 int VE_INTERRUPT_CTRL ;
 int VE_INTERRUPT_MODE_DETECT ;
 int VE_SEQ_CTRL ;
 int VE_SEQ_CTRL_TRIG_MODE_DET ;
 int aspeed_video_update (struct aspeed_video*,int ,int ,int ) ;

__attribute__((used)) static void aspeed_video_enable_mode_detect(struct aspeed_video *video)
{

 aspeed_video_update(video, VE_INTERRUPT_CTRL, 0,
       VE_INTERRUPT_MODE_DETECT);


 aspeed_video_update(video, VE_SEQ_CTRL, 0, VE_SEQ_CTRL_TRIG_MODE_DET);
}
