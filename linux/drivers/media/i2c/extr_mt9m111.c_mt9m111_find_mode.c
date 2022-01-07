
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int width; int height; } ;
struct mt9m111_mode_info {unsigned int max_fps; } ;
struct TYPE_2__ {int dev; } ;
struct mt9m111 {int * ctx; TYPE_1__ subdev; struct v4l2_rect rect; } ;


 int MT9M111_MAX_HEIGHT ;
 int MT9M111_MAX_WIDTH ;
 int MT9M111_MODE_QSXGA_30FPS ;
 int MT9M111_MODE_SXGA_15FPS ;
 int MT9M111_NUM_MODES ;
 unsigned int abs (unsigned int) ;
 int context_a ;
 int context_b ;
 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*) ;
 struct mt9m111_mode_info* mt9m111_mode_data ;

__attribute__((used)) static const struct mt9m111_mode_info *
mt9m111_find_mode(struct mt9m111 *mt9m111, unsigned int req_fps,
    unsigned int width, unsigned int height)
{
 const struct mt9m111_mode_info *mode;
 struct v4l2_rect *sensor_rect = &mt9m111->rect;
 unsigned int gap, gap_best = (unsigned int) -1;
 int i, best_gap_idx = MT9M111_MODE_SXGA_15FPS;
 bool skip_30fps = 0;






 if (sensor_rect->width != MT9M111_MAX_WIDTH ||
     sensor_rect->height != MT9M111_MAX_HEIGHT) {
  dev_info(mt9m111->subdev.dev,
    "Framerate selection is not supported for cropped "
    "images\n");
  return ((void*)0);
 }


 if (width > MT9M111_MAX_WIDTH / 2 || height > MT9M111_MAX_HEIGHT / 2) {
  dev_dbg(mt9m111->subdev.dev,
   "Framerates > 15fps are supported only for images "
   "not exceeding 640x512\n");
  skip_30fps = 1;
 }


 for (i = 0; i < MT9M111_NUM_MODES; i++) {
  unsigned int fps = mt9m111_mode_data[i].max_fps;

  if (fps == 30 && skip_30fps)
   continue;

  gap = abs(fps - req_fps);
  if (gap < gap_best) {
   best_gap_idx = i;
   gap_best = gap;
  }
 }





 mode = &mt9m111_mode_data[best_gap_idx];
 mt9m111->ctx = (best_gap_idx == MT9M111_MODE_QSXGA_30FPS) ? &context_a :
            &context_b;
 return mode;
}
