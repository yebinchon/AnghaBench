
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_bt_timings {unsigned int width; unsigned int height; } ;
struct aspeed_video {TYPE_1__* srcs; int dev; scalar_t__ frame_bottom; scalar_t__ frame_top; scalar_t__ frame_right; scalar_t__ frame_left; struct v4l2_bt_timings active_timings; } ;
struct TYPE_3__ {unsigned int size; int dma; } ;


 unsigned int DIRECT_FETCH_THRESHOLD ;
 int FIELD_PREP (int ,scalar_t__) ;
 int VE_CAP_WINDOW ;
 int VE_COMP_WINDOW ;
 int VE_CTRL ;
 int VE_CTRL_DIRECT_FETCH ;
 int VE_CTRL_INT_DE ;
 int VE_SRC0_ADDR ;
 int VE_SRC1_ADDR ;
 int VE_SRC_SCANLINE_OFFSET ;
 int VE_TGS_0 ;
 int VE_TGS_1 ;
 int VE_TGS_FIRST ;
 int VE_TGS_LAST ;
 int aspeed_video_alloc_buf (struct aspeed_video*,TYPE_1__*,unsigned int) ;
 int aspeed_video_calc_compressed_size (struct aspeed_video*,unsigned int) ;
 int aspeed_video_free_buf (struct aspeed_video*,TYPE_1__*) ;
 int aspeed_video_update (struct aspeed_video*,int ,int ,int ) ;
 int aspeed_video_write (struct aspeed_video*,int ,int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void aspeed_video_set_resolution(struct aspeed_video *video)
{
 struct v4l2_bt_timings *act = &video->active_timings;
 unsigned int size = act->width * act->height;


 aspeed_video_calc_compressed_size(video, size);

 if (video->active_timings.width == 1680) {
  aspeed_video_write(video, VE_CAP_WINDOW,
       1728 << 16 | act->height);
  size += (1728 - 1680) * video->active_timings.height;
 } else {
  aspeed_video_write(video, VE_CAP_WINDOW,
       act->width << 16 | act->height);
 }
 aspeed_video_write(video, VE_COMP_WINDOW,
      act->width << 16 | act->height);
 aspeed_video_write(video, VE_SRC_SCANLINE_OFFSET, act->width * 4);


 if (size < DIRECT_FETCH_THRESHOLD) {
  aspeed_video_write(video, VE_TGS_0,
       FIELD_PREP(VE_TGS_FIRST,
           video->frame_left - 1) |
       FIELD_PREP(VE_TGS_LAST,
           video->frame_right));
  aspeed_video_write(video, VE_TGS_1,
       FIELD_PREP(VE_TGS_FIRST, video->frame_top) |
       FIELD_PREP(VE_TGS_LAST,
           video->frame_bottom + 1));
  aspeed_video_update(video, VE_CTRL, 0, VE_CTRL_INT_DE);
 } else {
  aspeed_video_update(video, VE_CTRL, 0, VE_CTRL_DIRECT_FETCH);
 }

 size *= 4;

 if (size != video->srcs[0].size) {
  if (video->srcs[0].size)
   aspeed_video_free_buf(video, &video->srcs[0]);
  if (video->srcs[1].size)
   aspeed_video_free_buf(video, &video->srcs[1]);

  if (!aspeed_video_alloc_buf(video, &video->srcs[0], size))
   goto err_mem;
  if (!aspeed_video_alloc_buf(video, &video->srcs[1], size))
   goto err_mem;

  aspeed_video_write(video, VE_SRC0_ADDR, video->srcs[0].dma);
  aspeed_video_write(video, VE_SRC1_ADDR, video->srcs[1].dma);
 }

 return;

err_mem:
 dev_err(video->dev, "Failed to allocate source buffers\n");

 if (video->srcs[0].size)
  aspeed_video_free_buf(video, &video->srcs[0]);
}
