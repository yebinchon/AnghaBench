
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ virt; } ;
struct aspeed_video {scalar_t__ yuv420; TYPE_1__ jpeg; } ;


 int VE_SEQ_CTRL ;
 int VE_SEQ_CTRL_YUV420 ;
 int aspeed_video_init_jpeg_table (scalar_t__,scalar_t__) ;
 int aspeed_video_update (struct aspeed_video*,int ,int ,int ) ;

__attribute__((used)) static void aspeed_video_update_subsampling(struct aspeed_video *video)
{
 if (video->jpeg.virt)
  aspeed_video_init_jpeg_table(video->jpeg.virt, video->yuv420);

 if (video->yuv420)
  aspeed_video_update(video, VE_SEQ_CTRL, 0, VE_SEQ_CTRL_YUV420);
 else
  aspeed_video_update(video, VE_SEQ_CTRL, VE_SEQ_CTRL_YUV420, 0);
}
