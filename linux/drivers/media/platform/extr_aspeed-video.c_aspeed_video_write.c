
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct aspeed_video {scalar_t__ base; int dev; } ;


 int dev_dbg (int ,char*,scalar_t__,int ) ;
 int readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void aspeed_video_write(struct aspeed_video *video, u32 reg, u32 val)
{
 writel(val, video->base + reg);
 dev_dbg(video->dev, "write %03x[%08x]\n", reg,
  readl(video->base + reg));
}
