
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_video {int flags; int eclk; int vclk; } ;


 int VE_INTERRUPT_CTRL ;
 int VE_INTERRUPT_STATUS ;
 int VIDEO_CLOCKS_ON ;
 int aspeed_video_write (struct aspeed_video*,int ,int) ;
 int clear_bit (int ,int *) ;
 int clk_disable (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void aspeed_video_off(struct aspeed_video *video)
{
 if (!test_bit(VIDEO_CLOCKS_ON, &video->flags))
  return;


 aspeed_video_write(video, VE_INTERRUPT_CTRL, 0);
 aspeed_video_write(video, VE_INTERRUPT_STATUS, 0xffffffff);


 clk_disable(video->vclk);
 clk_disable(video->eclk);

 clear_bit(VIDEO_CLOCKS_ON, &video->flags);
}
