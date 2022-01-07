
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct aspeed_video {int dev; scalar_t__ base; } ;


 int dev_dbg (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 aspeed_video_read(struct aspeed_video *video, u32 reg)
{
 u32 t = readl(video->base + reg);

 dev_dbg(video->dev, "read %03x[%08x]\n", reg, t);
 return t;
}
