
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizeimage; int height; int width; } ;
struct TYPE_4__ {int height; int width; } ;
struct aspeed_video {int max_compressed_size; TYPE_1__ pix_fmt; TYPE_2__ active_timings; TYPE_2__ detected_timings; } ;


 int aspeed_video_get_resolution (struct aspeed_video*) ;
 int aspeed_video_init_regs (struct aspeed_video*) ;
 int aspeed_video_on (struct aspeed_video*) ;
 int aspeed_video_set_resolution (struct aspeed_video*) ;

__attribute__((used)) static void aspeed_video_start(struct aspeed_video *video)
{
 aspeed_video_on(video);

 aspeed_video_init_regs(video);


 aspeed_video_get_resolution(video);


 video->active_timings = video->detected_timings;
 aspeed_video_set_resolution(video);

 video->pix_fmt.width = video->active_timings.width;
 video->pix_fmt.height = video->active_timings.height;
 video->pix_fmt.sizeimage = video->max_compressed_size;
}
