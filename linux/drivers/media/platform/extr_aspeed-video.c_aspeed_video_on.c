
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_video {int flags; int vclk; int eclk; } ;


 int VIDEO_CLOCKS_ON ;
 int clk_enable (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void aspeed_video_on(struct aspeed_video *video)
{
 if (test_bit(VIDEO_CLOCKS_ON, &video->flags))
  return;


 clk_enable(video->eclk);
 clk_enable(video->vclk);

 set_bit(VIDEO_CLOCKS_ON, &video->flags);
}
